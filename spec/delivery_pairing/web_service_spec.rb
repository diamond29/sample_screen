require 'delivery_pairing/web_service'
require 'delivery_pairing/models'

module DeliveryPairing

  describe WebService do
    describe 'get /' do
      it 'returns an OK response' do
        get '/'

        expect(last_response).to be_ok
      end
    end

    describe 'post /driver_order_map' do
      it 'returns json hash with one driver and no orders' do
        drivers = [Models::Driver.new(1)]
        orders = []
        post_body = { drivers: drivers, orders: orders }

        post '/driver_order_map', post_body.to_json

        expect(JSON.parse(last_response.body)).to be_an_instance_of Hash
      end
    end
  end

end
