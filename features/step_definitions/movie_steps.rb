Given('I am on the {string} page for the movie {string}') do |action, movie_title|
    movie = Movie.find_by title: movie_title
    case action
    when "show"
        visit movie_path(movie)
    end
end

Then('I should be on the {string} page for the movie {string}') do |action, movie_title|
    movie = Movie.find_by title: movie_title
    case action
    when "show"
        expect(page).to have_current_path(movie_path(movie))
    end
end

Given('movie with title {string} exists') do |movie_title|
    pending # Write code here that turns the phrase above into concrete actions
end