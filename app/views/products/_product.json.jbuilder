json.extract! product, :id, :name, :price, :image, :description, :category_id, :created_at, :updated_at
json.url list_products_url(product, format: :json)
