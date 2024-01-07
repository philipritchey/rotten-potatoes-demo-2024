Then('I should see {string}') do |string|
    expect(page).to have_content(string)
end

Then('I should not see {string}') do |string|
    pending # Write code here that turns the phrase above into concrete actions
end