require 'oauth2'

# client_id + client_secret can be blank for this strategy
client_id = ''
client_secret = ''
site = ''

client = OAuth2::Client.new(client_id, client_secret, site: site)

puts 'Requesting token…'
token = client.password.get_token('username', 'password')
puts "Access Token: #{token.token}"
