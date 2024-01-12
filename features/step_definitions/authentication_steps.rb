# frozen_string_literal: true

Given ('I am logged in as {string}') do |email|
    visit login_path
    select email, from: "Email"
    click_on "Login"
end
