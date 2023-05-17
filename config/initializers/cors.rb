# config/initializers/cors.rb
Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://friendly-axolotl-af950f.netlify.app/'
    resource(
     "*",
      headers: :any,
      expose: ['access-token', 'expiry', 'token-type', 'Authorization'],
      methods: [:get, :post, :put, :patch, :delete, :options, :head],
      credentials: true
    )
  end
end
