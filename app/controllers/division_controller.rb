class DivisionController < ApplicationController
before_action :authenticate_user! #make sure the user is logged in before letting them access this section

  def index
  end
  
  def new
  end
  
  def create
    @division = Division.new(division_params)
    if @division.save
      flash[:notice] = "Successfully added #{@division.name}"
      return redirect_to divisions_path
    else
      flash[:alert] = "Failed to add division"
      return redirect_to new_division_path
    end
  end
  
  def delete
    @division = Division.find_by_id(params[:id])
    if @division.destroy
      flash[:notice] = "Successfully removed division"
      return redirect_to divisions_path
    else
      flash[:alert] = "Failed to remove division"
      return redirect_to divisions_path
    end
  end
  
  private 
  
  def division_params
    params.require(:division).permit(:name, :location)
  end
  
end
