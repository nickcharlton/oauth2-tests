require 'oauth2'

client_id = ''
client_secret = ''
site = ''

client = OAuth2::Client.new(client_id, client_secret, site: site)

puts 'Requesting token…'
token = client.client_credentials.get_token
puts "Access Token: #{token.token}"
