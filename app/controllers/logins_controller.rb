# frozen_string_literal: true

# controller for handling login
class LoginsController < ApplicationController
  def index
    moviegoers = Moviegoer.select :email
    @emails = []
    moviegoers.each do |moviegoer|
      @emails << [moviegoer.email]
    end
  end

  def login
    moviegoer = Moviegoer.find_by email: login_params
    session[:moviegoer_id] = moviegoer.id
    redirect_to moviegoer_path(moviegoer)
  end

  private

  # Only allow a list of trusted parameters through.
  def login_params
    params.require(:email) # since email is only value, this returns a string
  end
end
