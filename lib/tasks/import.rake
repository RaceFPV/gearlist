require 'csv'

namespace :csv do

  desc "Import CSV Data from Tracmor"
  task :import => :environment do
    progressbar = ProgressBar.create(:title => 'Tracmor CSV file import', :total => 1858)
    csv_file_path = 'db/seeds/assetexport.csv'
    puts "Starting Tracmor data import -- please wait"
    CSV.foreach(csv_file_path) do |row|
    
    
      Item.create!({
        :assettag => row[0],
        :model => row[1],
        :category => row[2],
        :brand => row[3],
        :division => row[4],
        :modelcode => row[5],
        :notes => if row[6].present? then row[6] else "" end + "<br/><br/>" + if row[7].present? then row[7] else "" end,
        :assigneduser => row[8],
        :hostname => row[9],
        :ponumber => row[10],
      })
      progressbar.increment
    end
  end
end