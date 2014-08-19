json.array!(@projects) do |project|
  json.extract! project, :id, :name, :location, :year, :client, :client_url, :category_id
  json.url project_url(project, format: :json)
end
