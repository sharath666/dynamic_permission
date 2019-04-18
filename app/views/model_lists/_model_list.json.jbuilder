json.extract! model_list, :id, :name, :created_at, :updated_at
json.url model_list_url(model_list, format: :json)
