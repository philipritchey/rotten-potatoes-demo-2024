require 'rails_helper'

RSpec.describe MoviesController, type: :controller do
    before(:all) do
        @movie = Movie.create
    end

    after(:all) do
        Movie.destroy_all
    end

    describe "GET index" do
        it "assigns @movies" do
            get :index
            expect(assigns(:movies)).to eq([@movie])
        end

        it "renders the index template" do
            get :index
            expect(response).to render_template(:index)
        end
    end

    describe "GET show" do
        it "assigns @reviews" do
            moviegoer = Moviegoer.create
            review = Review.create movie_id: @movie.id, moviegoer_id: moviegoer.id
            get :show, params: { id: @movie.id }
            expect(assigns(:reviews)).to eq([review])
        end
    end

    describe "GET new" do
        it "assigns @movie" do
            get :new
            expect(assigns(:movie)).to be_a_new(Movie)
        end

        it "renders the new template" do
            get :new
            expect(response).to render_template(:new)
        end
    end

    describe "GET create" do
        it "rediects to show on success" do
            post :create, params: { movie: { title: 'Hero' } }
            movie = Movie.find_by title: 'Hero'
            expect(response).to redirect_to movie_path(movie)
        end
    end
end
