class FixEmploymentStatusColumnSpellingInCcEmployees < ActiveRecord::Migration[5.0]
  def change
    rename_column :cc_employees, :employement_status, :employment_status
  end
end
