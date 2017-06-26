class ItemController < ApplicationController
before_action :authenticate_user!, except: [:api] #make sure the user is logged in before letting them access this section
  def index
  end
  
  def new
  end
  
  def api
    @items = Item.all.pluck(:assettag, :category, :division, :model, :QATag, :servicetag, :hostname, :assigneduser, :notes)
    @data = {"data": @items}
    return render :json => @data.to_json
  end
  
  def create
    @item = Item.new(item_params)
    @item[:addedby] = current_user.email
    if @item.save
      flash[:notice] = "Successfully added #{@item.assettag}"
      return redirect_to item_details_path(@item.assettag)
    else
      flash[:alert] = "Failed to add item"
      return redirect_to dashboard_path
    end
  end
  
  def delete
    @item = Item.find_by_assettag(params[:id])
    if @item.destroy
      flash[:notice] = "Successfully removed asset"
      return redirect_to dashboard_path
    else
      flash[:alert] = "Failed to remove asset"
      return redirect_to item_details_path(@item.assettag)
    end
  end
  
  def details
    @item = Item.find_by_assettag(params[:id])
  end
  
  def edit
    @item = Item.find_by_assettag(params[:id])
  end
  
  def clone
    @itemfrom = Item.find_by_assettag(params[:id])
    @item = Item.new
  end
  
  def update
    @item = Item.find_by_assettag(params[:id])
    if @item.update_attributes(item_params)
      flash[:success] = "Asset item updated successfully"
      return redirect_to dashboard_path
    else
      flash[:alert] = "Failed to update asset item"
      render 'edit'
    end
  end
  
  private 
  
  def item_params
    params.require(:item).permit(:name, :category, :model, :os, :processor, :assettag, :hostname, :ponumber, :notes, :servicetag, :room_id, :addedby, :division, :brand, :assigneduser, :assignedroom, :QATag)
  end
end
