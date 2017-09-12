class ReviewsController < ApplicationController
  def new
    render :new
  end
  def create
    review = Review.new
    review.content = params[:content]
    review.save
    redirect_to '/contact-us'
  end
end
