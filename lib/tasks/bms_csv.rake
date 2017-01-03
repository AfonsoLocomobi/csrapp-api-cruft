# | id                | int(11)      | NO   | PRI | NULL    | auto_increment |
# | badge_number      | varchar(255) | NO   | UNI | NULL    |                |
# | last_name         | varchar(255) | YES  |     | NULL    |                |
# | first_name        | varchar(255) | YES  |     | NULL    |                |
# | middle_initial    | varchar(255) | YES  |     | NULL    |                |
# | encode_number     | varchar(255) | YES  |     | NULL    |                |
# | organizational_id | varchar(255) | YES  |     | NULL    |                |
# | status_flag       | varchar(255) | YES  |     | NULL    |                |
# | created_at        | datetime     | NO   |     | NULL    |                |
# | updated_at        | datetime     | NO   |     | NULL    |                |


require 'csv'


namespace :bms_csv do
    desc "Import badge manament system csv file"

    task :import, [:csv_path] => [:environment] do |task, args|
        if !args.csv_path
            raise "Must specify csv file path"
        end

        csv_path = args.csv_path

        BadgeCsvParser.foreach(csv_path) do |row, line, linenum|
            badge = Badge.new

            badge.employee_number       = row[0]
            badge.last_name             = row[1]
            badge.first_name            = row[2]
            badge.middle_initial        = row[3]
            badge.badge_encode_number   = row[4]
            badge.organizational_id     = row[5]
            badge.status_flag           = row[6]

            employee = CcEmployee.find_by(badge_encode_number: badge.badge_encode_number)

            begin
              
                badge.cc_employee_id = employee.id unless employee.nil?

                badge.save!

            rescue RuntimeError, ActiveRecord::RecordInvalid => err
                print "Bad badge record on line #{linenum}: #{err}: #{line}\n"
            end
            
        end

        
#        badge = Badge.new
#
#        badge.badge_number      = "F58359"
#        badge.last_name         = "Mouse"
#        badge.first_name        = "Mickey"
#        badge.middle_initial    = "R"
#        badge.encode_number     = "5858390"
#        badge.organizational_id = "RJNVDKSJ"
#        badge.status_flag       = "OK"
#        badge.save!
#        
#        badges = Badge.all
#        badges.each do |x|
#            print "id: " + badge.id.to_s + "\n"
#            print "badge_number: " + badge.badge_number.to_s + "\n"
#            print "last_name: " + badge.last_name.to_s + "\n"
#            print "first_name: " + badge.first_name.to_s + "\n"
#            print "middle_initial: " + badge.middle_initial.to_s + "\n"
#            print "encode_number: " + badge.encode_number.to_s + "\n"
#            print "organizational_id: " + badge.organizational_id.to_s + "\n"
#            print "status_flag: " + badge.status_flag.to_s + "\n"
#            print "created_at: " + badge.created_at.to_s + "\n"
#            print "updated_at: " + badge.updated_at.to_s + "\n"
#        end
    end

end
