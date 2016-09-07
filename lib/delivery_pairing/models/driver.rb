module DeliveryPairing
  module Models
    class Driver
      attr_reader :id

      def initialize(id)
        @id = id
      end

      def to_hash
        { id: @id }
      end

      def to_json(*json_generator_args)
        to_hash.to_json(*json_generator_args)
      end
    end
  end
end
