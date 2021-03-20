class UsersController < ApplicationController
  def show
    @user = User.find(current_user.id)
    @reviews = current_user.reviews
  end
end
