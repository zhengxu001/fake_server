json.extract! fake_api, :id, :method, :uri, :response, :created_at, :updated_at
json.url fake_api_url(fake_api, format: :json)
