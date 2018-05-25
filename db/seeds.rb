unless Division.count > 1
  if ENV["GEARLISTDIVISIONLIST"]
    divisionlist = ENV["GEARLISTDIVISIONLIST"]
  
    divisionlist.each do |name|
      Division.create( name: name )
    end
  end
end

unless User.count >= 1
  user = User.create! :email => ENV["GEARLISTMAILTOADDRESS"], :password => 'changeme!', :password_confirmation => 'changeme!'
end
