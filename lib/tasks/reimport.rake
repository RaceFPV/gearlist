require 'csv'

namespace :csv2 do

  desc "Import CSV Data from csv"
  task :reimport => :environment do
    progressbar = ProgressBar.create(:title => 'CSV file import', :total => 1774)
    csv_file_path = 'db/seeds/gearlist.csv'
    puts "Starting data import -- please wait"
    CSV.foreach(csv_file_path) do |row|

      @item = Item.find_by_assettag(row[0]) rescue nil
      if @item
        @item.assettag = row[0]
        @item.category = row[1]
        @item.division = row[2]
        @item.model = row[3]
        @item.hostname = row[4]
        @item.assigneduser = row[5]
        @item.servicetag = row[6]
        @item.QATag = row[7]
        @item.notes = row[9]
        @item.save!
        progressbar.increment
      end
    end
  end
end