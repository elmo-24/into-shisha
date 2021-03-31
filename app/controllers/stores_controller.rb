class StoresController < ApplicationController
  def index
    @stores = Store.order("created_at DESC")
  end

  def new
    @store = Store.new
  end
  
  def create
    @store = Store.new(store_params)
    if @store.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @store = Store.find(params[:id])
    @reviews = @store.reviews
  end

private

  def store_params
    params.require(:store).permit(:store_name, :store_type_id, :postal_code, :prefecture_id, :city, :house_number, :phone_number, :building_name, :access, :home_page, :day_off, :opening_hours, :minimum_charge, :price_info, :vibe_id, :bring_id, :concent_id, :alcohol_id, :smoke_id, :flavor_sale_id, :wifi_id, :card_id, :additional_info).merge(user_id: current_user.id)
  end
end
