# frozen_string_literal: true

# represents a movie
class Movie < ApplicationRecord
  has_many :reviews
end
