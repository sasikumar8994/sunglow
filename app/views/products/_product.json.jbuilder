json.extract! product, :id, :name, :description, :benefits, :features, :notes, :specification, :slug, :created_at, :updated_at
json.url product_url(product, format: :json)
