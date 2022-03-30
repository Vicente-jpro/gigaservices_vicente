json.extract! person, :id, :name_id, :gender, :email, :created_at, :updated_at
json.url person_url(person, format: :json)
