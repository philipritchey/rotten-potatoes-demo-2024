# frozen_string_literal: true

When('I fill in {string} with {string}') do |field, value|
  fill_in field, with: value
end

When('I select {string} from {string}') do |value, field|
  select value, from: field
end