class EmployeeNote < ApplicationRecord
  belongs_to :employee
  belongs_to :user, foreign_key: 'created_by_user_id'
end
