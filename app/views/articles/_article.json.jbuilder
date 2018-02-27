json.extract! article, :id, :name, :description, :price, :tumbnail_img, :gender, :brand_id, :created_at, :updated_at
json.url article_url(article, format: :json)
