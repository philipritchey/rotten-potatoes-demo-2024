# frozen_string_literal: true

# represents a moviegoer
class Moviegoer < ApplicationRecord
  has_many :reviews
end
