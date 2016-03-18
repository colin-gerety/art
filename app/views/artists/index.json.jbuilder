json.array!(@artists) do |artist|
  json.extract! artist, :id, :name, :phone, :web_site, :email
  json.url artist_url(artist, format: :json)
end
