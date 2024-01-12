json.extract! review, :id, :title, :body, :potatoes, :movie_id, :moviegoer_id, :created_at, :updated_at
json.url review_url(review, format: :json)
