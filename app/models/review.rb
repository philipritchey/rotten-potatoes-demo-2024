# frozen_string_literal: true

# represetns a review
class Review < ApplicationRecord
  belongs_to :movie
  belongs_to :moviegoer
end
