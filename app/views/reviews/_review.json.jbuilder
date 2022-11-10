json.extract! review, :id, :comentario, :calificacion, :created_at, :updated_at
json.url review_url(review, format: :json)
