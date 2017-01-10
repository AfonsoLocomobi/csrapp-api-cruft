namespace :employee_csv do

    desc "Import employee csv file"

    EMPLOYEE_ID_POS                     =  1
    EMPLOYEE_FIRST_NAME_POS             =  4
    EMPLOYEE_MIDDLE_INITIAL_POS         =  5
    EMPLOYEE_LAST_NAME_POS              =  6
    EMPLOYEE_NAME_SUFFIX_POS            =  7
    EFFECTIVE_STATUS_CHANGE_DATE_POS    =  9
    TERMINATION_DATE_POS                = 10
    EMPLOYEMENT_STATUS_POS              = 11
    HIRE_DATE_POS                       = 15
    ADJUST_HIRE_DATE_POS                = 16
    DEPARTMENT_NAME_POS                 = 22
    JOB_CODE_POS                        = 23
    JOB_TITLE_POS                       = 24
    DIVISION_INSTITUTE_POS              = 25
    FTE_POS                             = 26
    CCF_MAIL_CODE_POS                   = 28
    EMAIL_ADDRESS_POS                   = 29
    BADGE_ENCODE_NUMBER_POS             = 30
    SUPERVISOR_FIRST_NAME_POS           = 33
    SUPERVISOR_LAST_NAME_POS            = 34
    SUPERVISOR_EMPLOYEE_ID_POS          = 35
					

    task :import, [:csv_path] => [:environment] do |task, args|
        if !args.csv_path
            raise "Must specify csv file path"
        end

        csv_path = args.csv_path

        EmployeeExtractCsvParser.foreach(csv_path) do |row|
            employee = Employee.new
					
            employee.employee_number                    = row[EMPLOYEE_ID_POS]
            employee.first_name                         = row[EMPLOYEE_FIRST_NAME_POS]
            employee.middle_initial                     = row[EMPLOYEE_MIDDLE_INITIAL_POS]
            employee.last_name                          = row[EMPLOYEE_LAST_NAME_POS]
            employee.name_suffix                        = row[EMPLOYEE_NAME_SUFFIX_POS]
            employee.effective_status_change_date       = row[EFFECTIVE_STATUS_CHANGE_DATE_POS]
            employee.termination_date                   = row[TERMINATION_DATE_POS]
            employee.employment_status                  = row[EMPLOYEMENT_STATUS_POS]
            employee.hire_date                          = row[HIRE_DATE_POS]
            employee.adjust_hire_date                   = row[ADJUST_HIRE_DATE_POS]
            employee.department_name                    = row[DEPARTMENT_NAME_POS]
            employee.job_code                           = row[JOB_CODE_POS]
            employee.job_title                          = row[JOB_TITLE_POS]
            employee.division_institute                 = row[DIVISION_INSTITUTE_POS]
            employee.fte                                = row[FTE_POS]
            employee.ccf_mail_code                      = row[CCF_MAIL_CODE_POS]
            employee.email_address                      = row[EMAIL_ADDRESS_POS]
            employee.badge_encode_number                = row[BADGE_ENCODE_NUMBER_POS]
            employee.supervisor_first_name              = row[SUPERVISOR_FIRST_NAME_POS]
            employee.supervisor_last_name               = row[SUPERVISOR_LAST_NAME_POS]
            employee.supervisor_employee_id             = row[SUPERVISOR_EMPLOYEE_ID_POS]

            employee.save!
            
        end

    end

end
