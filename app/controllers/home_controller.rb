class HomeController < ApplicationController
  def show
  end

  def home
    env["omniauth.auth"].to_yaml
  end
end
