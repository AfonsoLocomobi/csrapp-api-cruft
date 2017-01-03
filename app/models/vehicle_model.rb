class VehicleModel < ApplicationRecord
    def display_name
        return "#{self.manufacturer} -- #{self.model}"
    end
end
