module JsonApiClient
  module Middleware
    class JsonRequest < Faraday::Middleware
      def call(environment)
        environment[:request_headers]["Accept"] = "application/json,*/*"
        uri = environment[:url]
        uri.path = uri.path
        @app.call(environment)
      end
    end
  end
end
