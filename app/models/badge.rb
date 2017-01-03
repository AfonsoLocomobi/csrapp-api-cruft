class Badge < ApplicationRecord
    belongs_to :cc_employee, optional: true
    validates :employee_number, presence: true
    validates :badge_encode_number, presence: true
end
