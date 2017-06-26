unless Division.count > 1
  divisionlist = ENV["GEARLISTDIVISIONLIST"]

  divisionlist.each do |name|
    Division.create( name: name )
  end
end

unless User.count >= 1
  user = User.create! :email => ENV["GEARLISTMAILTOADDRESS"], :password => 'changeme!', :password_confirmation => 'changeme!'
end
