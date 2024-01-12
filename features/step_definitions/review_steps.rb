Given('the title of my review is {string}') do |title|
    fill_in "Title", with: title
end

Given('the body of my review is {string}') do |body|
    fill_in "Body", with: body
end

Given('I give it {int} potatoes') do |potatoes|
    fill_in "Potatoes", with: potatoes
end

Then('I should see a review titled {string} with body {string} and {int} potatoes') do |title, body, potatoes|
    expect(page).to have_content("Title: #{title}")
    expect(page).to have_content("Body: #{body}")
    expect(page).to have_content("Potatoes: #{potatoes}")
end