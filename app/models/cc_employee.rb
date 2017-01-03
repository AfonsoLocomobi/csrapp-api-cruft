class CcEmployee < ApplicationRecord
  belongs_to :group_account, optional: true
  belongs_to :assignment, optional: true, :foreign_key => 'primary_assignment_id'
  belongs_to :assignment, optional: true, :foreign_key => 'secondary_assignment_id'
  belongs_to :form_of_payment, optional: true, :foreign_key => 'form_of_payment_id'

  has_many :violations
  has_many :vehicles
end
