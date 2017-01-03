class Vehicle < ApplicationRecord
  belongs_to :state
  belongs_to :vehicle_model
  belongs_to :vehicle_type
  belongs_to :cc_employee

   
end
