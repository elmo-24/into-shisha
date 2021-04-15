class StoresController < ApplicationController

  before_action :create_searching_object,only: [:index,:search_store]

  def index
    @stores = Store.order("created_at DESC") 
    @results = @q.result(distinct: true)
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

  def search_store
    @results = @q.result
  end

  def edit
    @store = Store.find(params[:id])
  end

  # def destroy
  #   store = Store.find(params[:id])
  #   store.destroy
  # end

private

  def store_params
    params.require(:store).permit(:store_name, :store_type_id, :postal_code, :prefecture_id, :city, :house_number, :phone_number, :building_name, :access, :home_page, :day_off, :opening_hours, :minimum_charge, :price_info, :vibe_id, :bring_id, :concent_id, :alcohol_id, :smoke_id, :flavor_sale_id, :wifi_id, :card_id, :additional_info).merge(user_id: current_user.id)
  end

  def create_searching_object
    @q = Store.ransack(params[:q])
  end
end
