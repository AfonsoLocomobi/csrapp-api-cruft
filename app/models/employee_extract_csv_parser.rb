require 'csv'

class EmployeeExtractCsvParser

    def self.foreach(path)
        # go through csv file line by line
        File.open(path, 'r').each_with_index do |line, i|
            # parse line from csv file
            row = CSV::parse_line(line, { :col_sep => ';' })

            # trim leading and trailing whitespace from each field
            row.map! { |v| v.to_s.strip }
            
            # pass row back to block
            yield row
        end
    end
end

