class BadgeCsvParser

    ORG_ID_POS = 5

    ROW_SIZE = 7 

    def self.foreach(path)

        File.open(path, 'r').each_with_index do |line, i|
            begin
                begin
                    # skip first line
                    next if i == 0

                    # calculate human readable line number
                    linenum = i + 1

                    # remove newline from end of line
                    line.chomp!
                      
                    # parse csv line
                    row = CSV.parse_line(line)

                    # raise exception if number of fields is wrong
                    if row.length != ROW_SIZE 
                        raise "Expected #{ROW_SIZE} fields, found #{row.length} instead"
                    end

                    # trim whitespace from start and end of each value
                    row.map! { |x| x.nil? ? nil : x.to_s.strip; } 
        
                    # orgid of "NO ORGID" and "Null" are both equivalent to nil
                    up_orgid = row[ORG_ID_POS].to_s.upcase
                    if (up_orgid == 'NO ORGID' || up_orgid == 'NULL')
                        row[ORG_ID_POS] = nil
                    end
        
                    # pass row back to block
                    yield row, line, linenum
                
                rescue ArgumentError, CSV::MalformedCSVError, RuntimeError => err
                    print "Bad badge csv line #{linenum}: #{err.message}: #{line}\n"
                end

                
            end
    
            
        end
    end
            


end
