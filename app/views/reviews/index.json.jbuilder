json.array!(@reviews) do |review|
  json.extract! review, :id, :comments, :produce_id
  json.url review_url(review, format: :json)
end
