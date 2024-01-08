# frozen_string_literal: true

json.extract! moviegoer, :id, :email, :name, :created_at, :updated_at
json.url moviegoer_url(moviegoer, format: :json)
