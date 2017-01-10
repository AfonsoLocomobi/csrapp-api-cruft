class Violation < ApplicationRecord
  belongs_to :violation_type
  belongs_to :employee, optional: false
end
