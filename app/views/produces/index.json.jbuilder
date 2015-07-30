json.array!(@produces) do |produce|
  json.extract! produce, :id, :name, :description, :price_in_cents
  json.url produce_url(produce, format: :json)
end
