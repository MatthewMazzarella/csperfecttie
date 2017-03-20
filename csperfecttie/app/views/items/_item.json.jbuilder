json.extract! item, :id, :name, :description, :price, :image_url, :category, :brand, :quantity, :color, :created_at, :updated_at
json.url item_url(item, format: :json)