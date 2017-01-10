class Badge < ApplicationRecord
    belongs_to :employee, optional: true
    validates :employee_number, presence: true
    validates :badge_encode_number, presence: true
end
