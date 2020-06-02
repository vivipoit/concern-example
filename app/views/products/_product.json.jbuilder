json.extract! product, :id, :name, :regular_price, :discount, :sale_price, :created_at, :updated_at
json.url product_url(product, format: :json)
