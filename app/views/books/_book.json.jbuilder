json.extract! book, :id, :title, :author, :publisher, :description, :rating, :created_at, :updated_at
json.url book_url(book, format: :json)
