# frozen_string_literal: true

When('I fill in {string} with {string}') do |field, value|
  fill_in field, with: value
end
