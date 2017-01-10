# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


violation_amounts = [
  { :amount => 5.00   },
  { :amount => 10.00  },
  { :amount => 15.00  },
  { :amount => 25.00  },
  { :amount => 100.00 },
  { :amount => 250.00 }
]

violation_types = [
  { :name => 'ADA'                },
  { :name => 'Incorrect location' },
  { :name => 'Tailgating'         },
  { :name => 'Property damage'    }
]

vehicle_models = [
  { :manufacturer => 'ABARTH, UK',                 :model => '500' },
  { :manufacturer => 'ABARTH, UK',                 :model => '500C' },
  { :manufacturer => 'AIXAM',                      :model => 'COUPE' },
  { :manufacturer => 'AIXAM',                      :model => 'CROSSLINE' },
  { :manufacturer => 'AIXAM',                      :model => 'CROSSOVER' },
  { :manufacturer => 'ALFA, ROMEO',                :model => 'GIULIETTA' },
  { :manufacturer => 'ALFA, ROMEO',                :model => 'MITO' },
  { :manufacturer => 'AUDI',                       :model => 'A1' },
  { :manufacturer => 'AUDI',                       :model => 'A3' },
  { :manufacturer => 'AUDI',                       :model => 'Q3' },
  { :manufacturer => 'BMW',                        :model => '1 SERIES' },
  { :manufacturer => 'BMW',                        :model => '2 SERIES' },
  { :manufacturer => 'BMW',                        :model => '3 SERIES' },
  { :manufacturer => 'BMW',                        :model => 'X1' },
  { :manufacturer => 'CITROEN, UK LTD',            :model => 'BERLINGO' },
  { :manufacturer => 'CITROEN, UK LTD',            :model => 'C1' },
  { :manufacturer => 'CITROEN, UK LTD',            :model => 'C3' },
  { :manufacturer => 'CITROEN, UK LTD',            :model => 'C3 PICASSO' },
  { :manufacturer => 'CITROEN, UK LTD',            :model => 'C4' },
  { :manufacturer => 'CITROEN, UK LTD',            :model => 'C4 CACTUS' },
  { :manufacturer => 'CITROEN, UK LTD',            :model => 'C4 PICASSO' },
  { :manufacturer => 'CITROEN, UK LTD',            :model => 'GRAND C4 PICASSO' },
  { :manufacturer => 'DACIA',                      :model => 'DUSTER' },
  { :manufacturer => 'DACIA',                      :model => 'LOGAN MCV' },
  { :manufacturer => 'DACIA',                      :model => 'SANDERO' },
  { :manufacturer => 'DACIA',                      :model => 'SANDERO STEPWAY' },
  { :manufacturer => 'DS, AUTOMOBILES',            :model => 'DS 3' },
  { :manufacturer => 'DS, AUTOMOBILES',            :model => 'DS 3 CABRIO' },
  { :manufacturer => 'DS, AUTOMOBILES',            :model => 'DS 4'  },
  { :manufacturer => 'FIAT',                       :model => '500'   },
  { :manufacturer => 'FIAT',                       :model => '500C'  },
  { :manufacturer => 'FIAT',                       :model => '500L'  },
  { :manufacturer => 'FIAT, AUTO (UK) LTD',        :model => '500X'  },
  { :manufacturer => 'FIAT, AUTO (UK) LTD',        :model => 'DOBLO' },
  { :manufacturer => 'FIAT, AUTO (UK) LTD',        :model => 'PANDA' },
  { :manufacturer => 'FIAT, AUTO (UK) LTD',        :model => 'PUNTO' },
  { :manufacturer => 'FIAT, AUTO (UK) LTD',        :model => 'QUBO'  },
  { :manufacturer => 'FORD',                       :model => 'B-MAX' },
  { :manufacturer => 'FORD',                       :model => 'C-MAX' },
  { :manufacturer => 'FORD',                       :model => 'ECOSPORT' },
  { :manufacturer => 'FORD',                       :model => 'FIESTA' },
  { :manufacturer => 'FORD',                       :model => 'FOCUS' },
  { :manufacturer => 'FORD',                       :model => 'GALAXY' },
  { :manufacturer => 'FORD',                       :model => 'GRAND C-MAX' },
  { :manufacturer => 'FORD',                       :model => 'GRAND TOURNEO CONNECT' },
  { :manufacturer => 'FORD',                       :model => 'KA' },
  { :manufacturer => 'FORD',                       :model => 'KUGA' },
  { :manufacturer => 'FORD',                       :model => 'MONDEO' },
  { :manufacturer => 'FORD',                       :model => 'S-MAX' },
  { :manufacturer => 'FORD',                       :model => 'TOURNEO CONNECT' },
  { :manufacturer => 'HONDA',                      :model => 'CIVIC' },
  { :manufacturer => 'HONDA',                      :model => 'CR-V' },
  { :manufacturer => 'HONDA',                      :model => 'JAZZ' },
  { :manufacturer => 'HYUNDAI',                    :model => 'I10' },
  { :manufacturer => 'HYUNDAI',                    :model => 'I20' },
  { :manufacturer => 'HYUNDAI',                    :model => 'I30' },
  { :manufacturer => 'HYUNDAI',                    :model => 'IX20' },
  { :manufacturer => 'HYUNDAI',                    :model => 'SANTA FE' },
  { :manufacturer => 'HYUNDAI',                    :model => 'TUCSON' },
  { :manufacturer => 'JEEP',                       :model => 'RENEGADE' },
  { :manufacturer => 'KIA, MOTORS UK',             :model => 'CARENS' },
  { :manufacturer => 'KIA, MOTORS UK',             :model => 'CEED' },
  { :manufacturer => 'KIA, MOTORS UK',             :model => 'PICANTO' },
  { :manufacturer => 'KIA, MOTORS UK',             :model => 'PRO CEED' },
  { :manufacturer => 'KIA, MOTORS UK',             :model => 'RIO' },
  { :manufacturer => 'KIA, MOTORS UK',             :model => 'SOUL' },
  { :manufacturer => 'KIA, MOTORS UK',             :model => 'SPORTAGE' },
  { :manufacturer => 'KIA, MOTORS UK',             :model => 'VENGA' },
  { :manufacturer => 'MAZDA, CARS UK',             :model => 'MAZDA2' },
  { :manufacturer => 'MAZDA, CARS UK',             :model => 'MAZDA3' },
  { :manufacturer => 'MAZDA, CARS UK',             :model => 'MAZDA6' },
  { :manufacturer => 'MAZDA, CARS UK',             :model => 'MX-5' },
  { :manufacturer => 'MERCEDES, BENZ',             :model => 'A-CLASS' },
  { :manufacturer => 'MERCEDES, BENZ',             :model => 'B-CLASS' },
  { :manufacturer => 'MERCEDES, BENZ',             :model => 'C-CLASS' },
  { :manufacturer => 'MERCEDES, BENZ',             :model => 'CLA-CLASS' },
  { :manufacturer => 'MERCEDES, BENZ',             :model => 'GLA-CLASS' },
  { :manufacturer => 'MERCEDES, BENZ COMMERCIALS', :model => 'VITO' },
  { :manufacturer => 'MG, MOTOR UK LIMITED',       :model => 'MG3' },
  { :manufacturer => 'MICROCAR',                   :model => 'M-GO' },
  { :manufacturer => 'MINI',                       :model => 'MINI' },
  { :manufacturer => 'MINI',                       :model => 'MINI CLUBMAN' },
  { :manufacturer => 'MINI',                       :model => 'MINI COUNTRYMAN' },
  { :manufacturer => 'MINI',                       :model => 'MINI PACEMAN' },
  { :manufacturer => 'MITSUBISHI',                 :model => 'ASX' },
  { :manufacturer => 'MITSUBISHI',                 :model => 'MIRAGE' },
  { :manufacturer => 'MITSUBISHI',                 :model => 'OUTLANDER' },
  { :manufacturer => 'NISSAN, MOTOR GB LTD',       :model => 'JUKE' },
  { :manufacturer => 'NISSAN, MOTOR GB LTD',       :model => 'MICRA' },
  { :manufacturer => 'NISSAN, MOTOR GB LTD',       :model => 'NOTE' },
  { :manufacturer => 'NISSAN, MOTOR GB LTD',       :model => 'NV200' },
  { :manufacturer => 'NISSAN, MOTOR GB LTD',       :model => 'PULSAR' },
  { :manufacturer => 'NISSAN, MOTOR GB LTD',       :model => 'QASHQAI' },
  { :manufacturer => 'NISSAN, MOTOR GB LTD',       :model => 'X-TRAIL' },
  { :manufacturer => 'PEUGEOT, MOTOR COMPANY PLC', :model => '108' },
  { :manufacturer => 'PEUGEOT, MOTOR COMPANY PLC', :model => '208' },
  { :manufacturer => 'PEUGEOT, MOTOR COMPANY PLC', :model => '308' },
  { :manufacturer => 'PEUGEOT, MOTOR COMPANY PLC', :model => '5008' },
  { :manufacturer => 'PEUGEOT, MOTOR COMPANY PLC', :model => '2008 CROSSOVER' },
  { :manufacturer => 'PEUGEOT, MOTOR COMPANY PLC', :model => '3008 CROSSOVER' },
  { :manufacturer => 'PEUGEOT, MOTOR COMPANY PLC', :model => '308 SW' },
  { :manufacturer => 'PEUGEOT, MOTOR COMPANY PLC', :model => 'PARTNER' },
  { :manufacturer => 'RENAULT, UK LTD',            :model => 'CAPTUR' },
  { :manufacturer => 'RENAULT, UK LTD',            :model => 'CLIO' },
  { :manufacturer => 'RENAULT, UK LTD',            :model => 'GRAND SCENIC' },
  { :manufacturer => 'RENAULT, UK LTD',            :model => 'KADJAR' },
  { :manufacturer => 'RENAULT, UK LTD',            :model => 'MEGANE' },
  { :manufacturer => 'RENAULT, UK LTD',            :model => 'SCENIC' },
  { :manufacturer => 'RENAULT, UK LTD',            :model => 'TRAFIC' },
  { :manufacturer => 'RENAULT, UK LTD',            :model => 'TWINGO' },
  { :manufacturer => 'RENAULT, UK LTD',            :model => 'ZOE' },
  { :manufacturer => 'SEAT, UK',                   :model => 'ALHAMBRA' },
  { :manufacturer => 'SEAT, UK',                   :model => 'IBIZA' },
  { :manufacturer => 'SEAT, UK',                   :model => 'LEON' },
  { :manufacturer => 'SEAT, UK',                   :model => 'MII' },
  { :manufacturer => 'SEAT, UK',                   :model => 'TOLEDO' },
  { :manufacturer => 'SKODA',                      :model => 'CITIGO' },
  { :manufacturer => 'SKODA',                      :model => 'FABIA' },
  { :manufacturer => 'SKODA',                      :model => 'OCTAVIA' },
  { :manufacturer => 'SKODA',                      :model => 'RAPID' },
  { :manufacturer => 'SKODA',                      :model => 'RAPID SPACEBACK' },
  { :manufacturer => 'SKODA',                      :model => 'SUPERB' },
  { :manufacturer => 'SKODA',                      :model => 'YETI' },
  { :manufacturer => 'SKODA',                      :model => 'YETI OUTDOOR' },
  { :manufacturer => 'SMART',                      :model => 'FORFOUR' },
  { :manufacturer => 'SMART',                      :model => 'FORTWO' },
  { :manufacturer => 'SSANGYONG, MOTOR UK LTD',    :model => 'KORANDO' },
  { :manufacturer => 'SSANGYONG, MOTOR UK LTD',    :model => 'REXTON W' },
  { :manufacturer => 'SSANGYONG, MOTOR UK LTD',    :model => 'TIVOLI' },
  { :manufacturer => 'SSANGYONG, MOTOR UK LTD',    :model => 'TURISMO' },
  { :manufacturer => 'SUBARU',                     :model => 'FORESTER' },
  { :manufacturer => 'SUBARU',                     :model => 'XV' },
  { :manufacturer => 'SUZUKI',                     :model => 'BALENO' },
  { :manufacturer => 'SUZUKI',                     :model => 'CELERIO' },
  { :manufacturer => 'SUZUKI',                     :model => 'JIMNY' },
  { :manufacturer => 'SUZUKI',                     :model => 'S-CROSS' },
  { :manufacturer => 'SUZUKI',                     :model => 'SWIFT' },
  { :manufacturer => 'SUZUKI',                     :model => 'VITARA' },
  { :manufacturer => 'TOYOTA',                     :model => 'AURIS' },
  { :manufacturer => 'TOYOTA',                     :model => 'AYGO' },
  { :manufacturer => 'TOYOTA',                     :model => 'PRIUS' },
  { :manufacturer => 'TOYOTA',                     :model => 'RAV4' },
  { :manufacturer => 'TOYOTA',                     :model => 'VERSO' },
  { :manufacturer => 'TOYOTA',                     :model => 'YARIS' },
  { :manufacturer => 'VAUXHALL',                   :model => 'ADAM' },
  { :manufacturer => 'VAUXHALL',                   :model => 'ASTRA' },
  { :manufacturer => 'VAUXHALL',                   :model => 'CASCADA' },
  { :manufacturer => 'VAUXHALL',                   :model => 'CORSA' },
  { :manufacturer => 'VAUXHALL',                   :model => 'GTC' },
  { :manufacturer => 'VAUXHALL',                   :model => 'INSIGNIA' },
  { :manufacturer => 'VAUXHALL',                   :model => 'MERIVA' },
  { :manufacturer => 'VAUXHALL',                   :model => 'MOKKA' },
  { :manufacturer => 'VAUXHALL',                   :model => 'VIVA' },
  { :manufacturer => 'VAUXHALL',                   :model => 'VIVARO' },
  { :manufacturer => 'VAUXHALL',                   :model => 'ZAFIRA TOURER' },
  { :manufacturer => 'VOLKSWAGEN, PASSENGER CARS', :model => 'BEETLE' },
  { :manufacturer => 'VOLKSWAGEN, PASSENGER CARS', :model => 'CC' },
  { :manufacturer => 'VOLKSWAGEN, PASSENGER CARS', :model => 'GOLF' },
  { :manufacturer => 'VOLKSWAGEN, PASSENGER CARS', :model => 'GOLF SV' },
  { :manufacturer => 'VOLKSWAGEN, PASSENGER CARS', :model => 'JETTA' },
  { :manufacturer => 'VOLKSWAGEN, PASSENGER CARS', :model => 'PASSAT' },
  { :manufacturer => 'VOLKSWAGEN, PASSENGER CARS', :model => 'POLO' },
  { :manufacturer => 'VOLKSWAGEN, PASSENGER CARS', :model => 'SCIROCCO' },
  { :manufacturer => 'VOLKSWAGEN, PASSENGER CARS', :model => 'SHARAN' },
  { :manufacturer => 'VOLKSWAGEN, PASSENGER CARS', :model => 'TOURAN' },
  { :manufacturer => 'VOLKSWAGEN, PASSENGER CARS', :model => 'UP!' },
  { :manufacturer => 'VOLVO',                      :model => 'V40' },
  { :manufacturer => 'VOLVO',                      :model => 'XC60' },
  { :manufacturer => 'ACURA',                      :model => '1.6EL' }
]

vehicle_types = [
  { :name => 'Car'   },
  { :name => 'SUV'   },
  { :name => 'Truck' },
  { :name => 'Van'   }
]

forms_of_payment = [
  { :name => 'Invoice'          },
  { :name => 'Lawson'           },
  { :name => 'Payrolldeduction' },
  { :name => 'Pre-pay'          },
  { :name => 'Groupaccount'     }
]

group_accounts = [
  { :name => 'Gold' },
  { :name => 'Silver' },
  { :name => 'Common' }
]

assignments = [
  { :name => '1100 E. 57th St., Chicago, IL 60637' },
  { :name => '1600 Pennsylvania Avenue, Washington, DC 20003' },
  { :name => '18 Mowat Ave, Toronto, ON M6K 3E8' }
]

states = [
  { :name => 'Alabama', :abbreviation => 'AL', :country => 'US' },
  { :name => 'Alaska', :abbreviation => 'AK', :country => 'US' },
  { :name => 'Alberta', :abbreviation => 'AB', :country => 'CA' },
  { :name => 'Arizona', :abbreviation => 'AZ', :country => 'US' },
  { :name => 'Arkansas', :abbreviation => 'AR', :country => 'US' },
  { :name => 'British Columbia', :abbreviation => 'BC', :country => 'CA' },
  { :name => 'California', :abbreviation => 'CA', :country => 'US' },
  { :name => 'Colorado', :abbreviation => 'CO', :country => 'US' },
  { :name => 'Connecticut', :abbreviation => 'CT', :country => 'US' },
  { :name => 'Delaware', :abbreviation => 'DE', :country => 'US' },
  { :name => 'District of Columbia', :abbreviation => 'DC', :country => 'US' },
  { :name => 'Florida', :abbreviation => 'FL', :country => 'US' },
  { :name => 'Georgia', :abbreviation => 'GA', :country => 'US' },
  { :name => 'Hawaii', :abbreviation => 'HI', :country => 'US' },
  { :name => 'Idaho', :abbreviation => 'ID', :country => 'US' },
  { :name => 'Illinois', :abbreviation => 'IL', :country => 'US' },
  { :name => 'Indiana', :abbreviation => 'IN', :country => 'US' },
  { :name => 'Iowa', :abbreviation => 'IA', :country => 'US' },
  { :name => 'Kansas', :abbreviation => 'KS', :country => 'US' },
  { :name => 'Kentucky', :abbreviation => 'KY', :country => 'US' },
  { :name => 'Louisiana', :abbreviation => 'LA', :country => 'US' },
  { :name => 'Maine', :abbreviation => 'ME', :country => 'US' },
  { :name => 'Manitoba', :abbreviation => 'MB', :country => 'CA' },
  { :name => 'Maryland', :abbreviation => 'MD', :country => 'US' },
  { :name => 'Massachusetts', :abbreviation => 'MA', :country => 'US' },
  { :name => 'Michigan', :abbreviation => 'MI', :country => 'US' },
  { :name => 'Minnesota', :abbreviation => 'MN', :country => 'US' },
  { :name => 'Mississippi', :abbreviation => 'MS', :country => 'US' },
  { :name => 'Missouri', :abbreviation => 'MO', :country => 'US' },
  { :name => 'Montana', :abbreviation => 'MT', :country => 'US' },
  { :name => 'Nebraska', :abbreviation => 'NE', :country => 'US' },
  { :name => 'Nevada', :abbreviation => 'NV', :country => 'US' },
  { :name => 'New Brunswick', :abbreviation => 'NB', :country => 'CA' },
  { :name => 'New Hampshire', :abbreviation => 'NH', :country => 'US' },
  { :name => 'New Jersey', :abbreviation => 'NJ', :country => 'US' },
  { :name => 'New Mexico', :abbreviation => 'NM', :country => 'US' },
  { :name => 'New York', :abbreviation => 'NY', :country => 'US' },
  { :name => 'Newfoundland and Labrador', :abbreviation => 'NL', :country => 'CA' },
  { :name => 'North Carolina', :abbreviation => 'NC', :country => 'US' },
  { :name => 'North Dakota', :abbreviation => 'ND', :country => 'US' },
  { :name => 'Nova Scotia', :abbreviation => 'NS', :country => 'CA' },
  { :name => 'Ohio', :abbreviation => 'OH', :country => 'US' },
  { :name => 'Oklahoma', :abbreviation => 'OK', :country => 'US' },
  { :name => 'Ontario', :abbreviation => 'ON', :country => 'CA' },
  { :name => 'Oregon', :abbreviation => 'OR', :country => 'US' },
  { :name => 'Pennsylvania', :abbreviation => 'PA', :country => 'US' },
  { :name => 'Puerto Rico', :abbreviation => 'PR', :country => 'US' },
  { :name => 'Quebec', :abbreviation => 'QC', :country => 'CA' },
  { :name => 'Rhode Island', :abbreviation => 'RI', :country => 'US' },
  { :name => 'Saskatchewan', :abbreviation => 'SK', :country => 'CA' },
  { :name => 'South Carolina', :abbreviation => 'SC', :country => 'US' },
  { :name => 'South Dakota', :abbreviation => 'SD', :country => 'US' },
  { :name => 'Tennessee', :abbreviation => 'TN', :country => 'US' },
  { :name => 'Texas', :abbreviation => 'TX', :country => 'US' },
  { :name => 'Utah', :abbreviation => 'UT', :country => 'US' },
  { :name => 'Vermont', :abbreviation => 'VT', :country => 'US' },
  { :name => 'Virginia', :abbreviation => 'VA', :country => 'US' },
  { :name => 'Washington', :abbreviation => 'WA', :country => 'US' },
  { :name => 'West Virginia', :abbreviation => 'WV', :country => 'US' },
  { :name => 'Wisconsin', :abbreviation => 'WI', :country => 'US' },
  { :name => 'Wyoming', :abbreviation => 'WY', :country => 'US' }
]


ActiveRecord::Base.transaction do
  violation_amounts.each do |r|
    ViolationAmount.create r
  end
  
  violation_types.each do |r|
    ViolationType.create r
  end
  
  vehicle_models.each do |r|
    VehicleModel.create r
  end
  
  vehicle_types.each do |r|
    VehicleType.create r
  end
  
  forms_of_payment.each do |r|
    FormOfPayment.create r
  end
  
  group_accounts.each do |r|
    GroupAccount.create r
  end
  
  assignments.each do |r|
    Assignment.create r
  end
  
  states.each do |r|
    State.create r
  end
end


