  
namespace :silkroad do

  SILKROAD_RECORD = 'silkroad'

  desc "Import records from SilkRoad"

  task import: :environment do


    client = SilkRoadClient.new('https://clevelandclinic-test-redcarpet.silkroad.com:443/eprise/WebServices?wsdl')
    client.log_in 'Web.Services4', 'sYn3rge!'

    silkroad_users = client.fetch_all_users

    importer = SilkRoadImporter.new
    importer.import silkroad_users


  end

end
