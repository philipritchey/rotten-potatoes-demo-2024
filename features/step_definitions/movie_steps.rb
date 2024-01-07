# frozen_string_literal: true

Given('I am on the {string} page for the movie {string}') do |action, movie_title|
  movie = Movie.find_by title: movie_title
  case action
  when 'show'
    visit movie_path(movie)
  when 'edit'
    visit edit_movie_path(movie)
  end
end

Then('I should be on the {string} page for the movie {string}') do |action, movie_title|
  movie = Movie.find_by title: movie_title
  case action
  when 'show'
    expect(page).to have_current_path movie_path(movie)
  end
end

Given('movie with title {string} exists') do |movie_title|
  Movie.create title: movie_title
end
