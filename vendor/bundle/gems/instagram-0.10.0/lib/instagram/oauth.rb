module Instagram
  # Defines HTTP request methods
  module OAuth
    # Return URL for OAuth authorization
    def authorize_url(options={})
      options[:response_type] ||= "code"
      params = authorization_params.merge(options)
      connection.build_url("/oauth/authorize/", params).to_s
    end

    # Return an access token from authorization
    def get_access_token(code, options={})
      options[:grant_type] ||= "authorization_code"
      params = access_token_params.merge(options)
      post("/oauth/access_token/", params.merge(:code => code), raw=false, unformatted=true, no_response_wrapper=true)
    end

    private

    def authorization_params
      {
        :client_id => client_id
      }
    end

    def access_token_params
      {
        :client_id => client_id,
        :client_secret => client_secret
      }
    end
  end
end
