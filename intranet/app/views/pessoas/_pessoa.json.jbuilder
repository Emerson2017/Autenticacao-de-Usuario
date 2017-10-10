json.extract! pessoa, :id, :nome, :telefone, :endereco, :created_at, :updated_at
json.url pessoa_url(pessoa, format: :json)
