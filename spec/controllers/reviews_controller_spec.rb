require 'rails_helper'

RSpec.describe ReviewsController, type: :controller do
    before(:all) do
        @movie = Movie.create
        @moviegoer = Moviegoer.create
    end

    after(:all) do
        Movie.destroy_all
        Moviegoer.destroy_all
    end

    describe "GET index" do
        it "assigns @reviews" do
            review = Review.create movie_id: @movie.id, moviegoer_id: @moviegoer.id
            get :index, params: { movie_id: @movie.id }
            expect(assigns(:reviews)).to eq([review])
        end

        it "renders the index template" do
            get :index, params: { movie_id: @movie.id }
            expect(response).to render_template(:index)
        end
    end

    describe "GET new" do
        it "assigns @review" do
            get :new, params: { movie_id: @movie.id }
            expect(assigns(:review)).to be_a_new(Review)
        end

        it "renders the new template" do
            get :new, params: { movie_id: @movie.id }
            expect(response).to render_template(:new)
        end
    end

    describe "POST create" do
        it "redirects to show movie on success" do
            post :create, params: { review: { movie_id: @movie_id, moviegoer_id: @moviegoer.id }, movie_id: @movie.id }
            expect(response).to redirect_to movie_path(@movie)
        end
    end

    describe "POST update" do
        it "redirects to show movie on success" do
            review = Review.create movie_id: @movie.id, moviegoer_id: @moviegoer.id
            post :update, params: { review: { movie_id: @movie_id, moviegoer_id: @moviegoer.id }, movie_id: @movie.id, id: review.id}
            expect(response).to redirect_to movie_path(@movie)
        end
    end
end
