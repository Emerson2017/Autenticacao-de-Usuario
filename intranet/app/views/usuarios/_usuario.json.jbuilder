json.extract! usuario, :id, :admin, :name, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
