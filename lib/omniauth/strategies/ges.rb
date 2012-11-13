require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Ges < OmniAuth::Strategies::OAuth2

      #option :client_options, {
      #    :site =>  OAUTH_PROVIDER_URL,
      #    :authorize_url => "#{OAUTH_PROVIDER_URL}/oauth/authorize",
      #    :access_token_url => "#{OAUTH_PROVIDER_URL}/oauth/token"
      #}

      uid { raw_info['uri'] }

      info do
        {
            name: raw_info['name'],
            email: raw_info['email'],
            login: raw_info['login'],
            id: @raw_info['id'],
            uri: raw_info['uri'],
        }
      end

      extra do
        {
            'raw_info' => raw_info
        }
      end

      def raw_info
        @raw_info ||= access_token.get(options.client_options[:info_url]).parsed
      end
    end
  end
end