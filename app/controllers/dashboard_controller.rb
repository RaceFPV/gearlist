class DashboardController < ApplicationController
before_action :authenticate_user! #make sure the user is logged in before letting them access this section
  def index
  end
  
  def employees
  end
  
  def rooms
  end
end
