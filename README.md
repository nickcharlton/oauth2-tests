# OAuth 2 Tests

This is a collection of examples for demonstrating how to authenticate with an
[OAuth 2][] provider using the [oauth2][] gem. It's simple enough (and designed
to be) to be taken out and reused in a test suite.

## Examples

### Authorization Code: `authorization_code.rb`

The standard/redirect based authorization token strategy.

This sort of assumes you're able to use the testing `redirect_uri` of:
`urn:ietf:wg:oauth:2.0:oob` (as seen in this bit of [Google documentation][]),
if you don't, you'd be redirected rather than shown the token.

### Client Credentials: `client_credentials.rb`

Providing a `client_id`/`client_secret`, but with no associated user.

### Resource Owner Password Credentials: `password.rb`

Exchanging a user's username/password pair for a token.

## Usage

Clone the repository, then edit the configuration at the top of the example,
followed by:

```sh
bundle install
bundle exec ruby authorization_token.rb
```

## Author

Copyright (c) 2015 Nick Charlton <nick@nickcharlton.net>

[OAuth 2]: http://tools.ietf.org/html/rfc6749
[oauth2]: https://github.com/intridea/oauth2
[Google documentation]: https://developers.google.com/accounts/docs/OAuth2InstalledApp#choosingredirecturi
