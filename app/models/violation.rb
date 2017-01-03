class Violation < ApplicationRecord
  belongs_to :violation_type
  belongs_to :cc_employee, optional: false
end
