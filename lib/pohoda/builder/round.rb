module Pohoda
  module Builder
    class Round
      include BaseBuilder

      attr_accessor :price_round

      def builder
        namespaces = { 'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }

        Nokogiri::XML::Builder.new do |xml|
          xml['typ'].round(namespaces) {
            xml['typ'].priceRound price_round
          }
        end
      end
    end
  end
end
