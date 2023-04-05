Rails.application.config.middleware.use OmniAuth::Builder do
  provider :openid_connect, {
    name: :afri,
    issuer: "http://localhost:3000",
    response_type: :code,
    client_options: {
      host: 'localhost',
      port: 3000,
      scheme: 'http',
      identifier: "client_id",
      secret: "secret",
      redirect_uri: "http://localhost:3001/auth/afri/callback",
      authorization_endpoint: "/client/oauth/authorize",
      token_endpoint: "/client/oauth/token",
    }
  }
end