module NRL
  # Superclass for API resource models
  class Base
    def self.connection
      @conn ||= Faraday.new(BASE_URL) do |connection|
        connection.adapter Faraday.default_adapter
        connection.response :json, content_type: /\bjson$/
      end
    end
  end
end
