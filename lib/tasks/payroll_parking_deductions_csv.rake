namespace :payroll_parking_deductions_csv do

    desc "Import payroll parking deductions csv file"

    task :import, [:csv_path] => [:environment] do |task, args|
        if !args.csv_path
            raise "Must specify csv file path"
        end

        csv_path = args.csv_path




        total = 0.0
        parser = PayrollParkingDeductionFixedWidthParser.new csv_path
        parser.each do |row|
            next unless row['record_id'] == 'D'

            parking_deduction = ParkingDeduction.new
            
            parking_deduction.record_type      = row['record_id']
            parking_deduction.employee_number  = row['employee']
            parking_deduction.process_level    = row['process_level']
            parking_deduction.deduction_code   = row['deduction_code']
            parking_deduction.deduction_amount = row['deduction_amount']
            parking_deduction.pay_end_date     = row['pay_end_date']

            parking_deduction.save!

        end


#        PayrollParkingDeductionCsvParser.foreach(csv_path) do |row|
#            employee = Employee.new
#					
#            employee.employee_id                        = row[EMPLOYEE_ID_POS]
#            employee.employee_first_name                = row[EMPLOYEE_FIRST_NAME_POS]
#            employee.employee_middle_initial            = row[EMPLOYEE_MIDDLE_INITIAL_POS]
#            employee.employee_last_name                 = row[EMPLOYEE_LAST_NAME_POS]
#            employee.employee_name_suffix               = row[EMPLOYEE_NAME_SUFFIX_POS]
#            employee.effective_status_change_date       = row[EFFECTIVE_STATUS_CHANGE_DATE_POS]
#            employee.termination_date                   = row[TERMINATION_DATE_POS]
#            employee.employement_status                 = row[EMPLOYEMENT_STATUS_POS]
#            employee.hire_date                          = row[HIRE_DATE_POS]
#            employee.adjust_hire_date                   = row[ADJUST_HIRE_DATE_POS]
#            employee.department_name                    = row[DEPARTMENT_NAME_POS]
#            employee.job_code                           = row[JOB_CODE_POS]
#            employee.job_title                          = row[JOB_TITLE_POS]
#            employee.division_institute                 = row[DIVISION_INSTITUTE_POS]
#            employee.fte                                = row[FTE_POS]
#            employee.ccf_mail_code                      = row[CCF_MAIL_CODE_POS]
#            employee.email_address                      = row[EMAIL_ADDRESS_POS]
#            employee.badge_encode_number                = row[BADGE_ENCODE_NUMBER_POS]
#            employee.supervisor_first_name              = row[SUPERVISOR_FIRST_NAME_POS]
#            employee.supervisor_last_name               = row[SUPERVISOR_LAST_NAME_POS]
#            employee.supervisor_employee_id             = row[SUPERVISOR_EMPLOYEE_ID_POS]
#
#            employee.save!
#            
#        end

    end

end
