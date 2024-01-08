Given('I am on the {string} page for the moviegoer {string}') do |action, moviegoer_email|
    moviegoer = Moviegoer.find_by email: moviegoer_email
    case action
    when "edit"
        visit edit_moviegoer_path(moviegoer)
    end
end

Then('I should be on the {string} page for the moviegoer {string}') do |action, moviegoer_email|
    moviegoer = Moviegoer.find_by email: moviegoer_email
    case action
    when "show"
        expect(page).to have_current_path(moviegoer_path(moviegoer))
    end
end

Given('moviegoer with email {string} and name {string} exists') do |email, name|
    Moviegoer.create email: email, name: name
end