class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:new]

  def index
    @reviews = Review.order("created_at DESC")
  end

  def new
    @review = Review.new
  end
  
  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @review = Review.find(params[:id])
  end

  def edit
    @review = Review.find(params[:id])
  end

   def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      redirect_to review_path(@review.id)
    else
      render :edit
    end
  end

  private

  def review_params
    params.require(:review).permit(:visit_date, :message, :flavor, :companion_id, :price, :image).merge(user_id: current_user.id)
  end
end
