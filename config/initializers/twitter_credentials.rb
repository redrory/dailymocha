require 'twitter'
=begin

client = Twitter::REST::Client.new do |config|
  config.consumer_key = ENV['tweet_key']
  config.consumer_secret = ENV['tweet_secret']
  config.access_token = ENV['oauth_token']
  config.access_token_secret = ENV['oauth_secret']
end

=end