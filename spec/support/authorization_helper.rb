require 'devise/jwt/test_helpers'

module AuthorizationHelper
  def authorize
    user = create_user
    headers = { 'Accept' => 'application/json', 'Content-Type' => 'application/json' }
  end
end
