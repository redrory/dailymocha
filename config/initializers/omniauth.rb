Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['tweet_key'], ENV['tweet_secret']
end