class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:new]

  def index
    @reviews = Review.order("created_at DESC")
  end

  def new
    @review = Review.new
  end
  
  def create
    binding.pry
    @review = Review.new(review_params)
    if @review.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @store = Store.find(params[:store_id])
    @review = Store.find(params[:store_id]).reviews.find(params[:id])
    @comment = Comment.new
    @comments = @review.comments.includes(:user).order("created_at DESC")
  end

  def edit
    @store = Store.find(params[:store_id])
    @review = Review.find(params[:id])
  end

   def update
    @store = Store.find(params[:store_id])
    @review = Review.find(params[:id])
    if @review.update(review_params)
      redirect_to store_review_path(@store.id,@review.id)
    else
      render :edit
    end
  end

  def destroy
    @store = Store.find(params[:store_id])
    @review = Review.find(params[:id])
    if @review.destroy
      redirect_to root_path
     else
      render :show
     end
  end

  private

  def review_params
    params.require(:review).permit(:visit_date, :message, :flavor, :companion_id, :price, images: []).merge(user_id: current_user.id, store_id: params[:store_id])
  end
end
