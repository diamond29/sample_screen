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
      context 'with 10 unique drivers and empty orders' do
        let(:drivers) do
          10.times.map do |count|
            Models::Driver.new(count)
          end
        end
        let(:orders) { [] }
        let(:post_body) { { drivers: drivers, orders: orders } }

        it 'returns json hash' do
          post '/driver_order_map', post_body.to_json

          expect(JSON.parse(last_response.body)).to be_an_instance_of Hash
        end
      end
    end
  end
end
