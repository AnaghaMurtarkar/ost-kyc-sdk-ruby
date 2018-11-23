module KYCSdk

  module Saas

    module V2

      class Users < KYCSdk::Saas::Base

        # Initialize
        #
        # Arguments:
        #   api_base_url: (String)
        #   api_key: (String)
        #   api_secret: (String)
        #   api_spec: (Boolean)
        #
        def initialize(params)
          super
          @url_prefix = '/api/v2/users'
        end

        # Create a new user
        #
        # Returns:
        #   response: (KYCSdk::Util::Result)
        #
        def create(params = {})
          http_helper.send_post_request("#{@url_prefix}", params)
        end

        # Get an existing user
        #
        # Returns:
        #   response: (KYCSdk::Util::Result)
        #
        def get(params)
          http_helper.send_get_request("#{@url_prefix}/#{get_id!(params)}", params)
        end

        # Fetches the list of an existing users
        #
        # Returns:
        #   response: (KYCSdk::Util::Result)
        #
        def list(params = {})
          http_helper.send_get_request("#{@url_prefix}", params)
        end

      end

    end

  end

end
