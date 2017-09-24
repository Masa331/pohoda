module Pohoda
  module Builder
    class RefTypeRegVatInEU
      include BaseBuilder

      attr_accessor :id, :ids

      def builder
        namespaces = { 'xmlns:inv' => 'http://www.stormware.cz/schema/version_2/invoice.xsd',
                       'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }

        Nokogiri::XML::Builder.new do |xml|
          xml['inv'].regVATinEU(namespaces) {
            xml['typ'].id id
            xml['typ'].ids ids
          }
        end
      end
    end
  end
end
