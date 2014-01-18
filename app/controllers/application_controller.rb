class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :load_tweets

  def load_tweets
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key = ENV['tweet_key']
      config.consumer_secret = ENV['tweet_secret']
      config.access_token = ENV['oauth_token']
      config.access_token_secret = ENV['oauth_secret']
    end
  end

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

end
