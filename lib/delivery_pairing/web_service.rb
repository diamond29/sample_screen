require 'sinatra/base'
require 'json'

module DeliveryPairing
  class WebService < Sinatra::Base
    get '/' do
      'The super awesome neato delivery pairing service!'
    end

   post '/driver_order_map' do
     body = JSON.parse(request.body.read)

     # the pair map will always give empty orders right now
     driver_order_pairings = body['drivers'].map { |driver| [driver['id'], []] }

     Hash[driver_order_pairings].to_json
   end
  end
end
