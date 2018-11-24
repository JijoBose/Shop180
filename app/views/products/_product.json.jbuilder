json.extract! product, :id, :name, :description, :mrp, :created_at, :updated_at
json.url product_url(product, format: :json)
