# frozen_string_literal: true

Given('I am on the {string} page') do |page_name|
  case page_name
  when 'new movie'
    visit new_movie_path
  when 'movie index'
    visit movies_path
  end
end

When('I click {string}') do |text|
  click_on text
end

When('I click on {string}') do |text|
  click_on text
end

Then('I should be on the {string} page') do |page_name|
  case page_name
  when 'movie index'
    expect(page).to have_current_path movies_path
  else
    expect(false).to be true
  end
end
