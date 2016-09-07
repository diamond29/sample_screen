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
     pairing_hash = {}
     body['drivers'].each do |driver|
       driver_id = driver['id']
       pairing_hash[driver_id] = []
     end

     pairing_hash.to_json
   end
  end
end
