class ReportsController < ApplicationController
  def index
  end
  
  def assigned
    @items = Item.where("assigneduser IS NOT NULL")
    return 'assigned.xls.erb'
  end
end
