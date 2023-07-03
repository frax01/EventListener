json.extract! utente, :id, :id, :nome, :cognome, :data_di_nascita, :mail, :password, :created_at, :updated_at
json.url utente_url(utente, format: :json)
