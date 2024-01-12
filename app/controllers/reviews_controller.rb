# frozen_string_literal: true

# controller for reviews
class ReviewsController < ApplicationController
  before_action :set_review, only: %i[show edit update destroy]

  # GET /movies/:movie_id/reviews
  def index
    @reviews = Review.where(movie_id: params[:movie_id])
  end

  # GET /movies/:movie_id/reviews/1
  def show; end

  # GET /movies/:movie_id/reviews/new
  def new
    @review = Review.new
    @movie = Movie.find(params[:movie_id])
  end

  # GET /movies/:movie_id/reviews/1/edit
  def edit; end

  # POST /movies/:movie_id/reviews
  def create
    @review = Review.new do |r|
      r.title = review_params[:title]
      r.body = review_params[:body]
      r.potatoes = review_params[:potatoes]
      r.moviegoer_id = review_params[:moviegoer_id]
      r.movie_id = params[:movie_id]
    end

    if @review.save
      redirect_to movie_path(@review.movie_id), notice: 'Review was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /movies/:movie_id/reviews/1
  def update
    if @review.update(review_params)
      redirect_to movie_path(@review.movie_id), notice: 'Review was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /movies/:movie_id/reviews/1
  def destroy
    @review.destroy!

    redirect_to reviews_url, notice: 'Review was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_review
    @review = Review.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def review_params
    params.require(:review).permit(:title, :body, :potatoes, :moviegoer_id)
  end
end
