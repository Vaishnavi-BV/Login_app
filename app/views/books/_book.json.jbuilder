json.extract! book, :id, :title, :author, :price, :image_data, :type, :created_at, :updated_at
json.url book_url(book, format: :json)
