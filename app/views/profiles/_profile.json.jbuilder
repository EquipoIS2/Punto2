json.extract! profile, :id, :Name, :Descrption, :Age, :created_at, :updated_at
json.url profile_url(profile, format: :json)
