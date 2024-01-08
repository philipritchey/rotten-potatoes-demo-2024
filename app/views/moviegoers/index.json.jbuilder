# frozen_string_literal: true

json.array! @moviegoers, partial: 'moviegoers/moviegoer', as: :moviegoer
