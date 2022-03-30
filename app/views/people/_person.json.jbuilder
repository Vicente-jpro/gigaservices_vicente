json.extract! person, :id, :title, :first, :last, :gender, :email, :created_at, :updated_at
json.url person_url(person, format: :json)
