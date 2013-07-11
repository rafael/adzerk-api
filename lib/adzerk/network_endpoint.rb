module Adzerk
  class  NetworkEndpoint
    include Adzerk::Util

    attr_reader :client

    def initialize(args= {})
      @client = args[:client]
    end

    def create_ad_type(data = {})
      data = { 'adtype' => camelize_data(data).to_json }
      response = client.post_request('adtypes', data)
      parse_response(response)
    end
  end
end
