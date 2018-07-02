class ReviewController < ApplicationController
  def index
    @review = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def add
    @review = Review.new
  end

  def create
    @review = Review.new review_params 
    if @review.save then
      redirect_to '/review'
    else
      render 'add'
    end
  end

  def update
    obj = Review.find(params[:id])
    obj.update(review_params)
    redirect_to '/review'
  end

  def edit
    @review = Review.find(params[:id])
  end

  def delete
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to '/review'
  end


  private
  def review_params
    params.require(:review).permit(:bookcard_id, :title ,:review)
  end
end
