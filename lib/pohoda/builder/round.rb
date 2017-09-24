module Pohoda
  module Builder
    class Round
      include BaseBuilder

      attr_accessor :price_round, :rate_vat_round, :price_round_sum, :price_round_sum_vat

      def builder
        namespaces = { 'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }

        Nokogiri::XML::Builder.new do |xml|
          xml['typ'].round(namespaces) {
            xml['typ'].priceRound price_round
            xml['typ'].rateVATround rate_vat_round
            xml['typ'].priceRoundSum price_round_sum
            xml['typ'].priceRoundSumVAT price_round_sum_vat
          }
        end
      end
    end
  end
end
