module Pohoda
  module Builder
    class AccountingType
      include BaseBuilder

      attr_accessor :id, :ids, :accounting_type

      def builder
        namespaces = { 'xmlns:inv' => 'http://www.stormware.cz/schema/version_2/invoice.xsd',
                       'xmlns:typ' => 'http://www.stormware.cz/schema/version_2/type.xsd' }

        Nokogiri::XML::Builder.new(encoding: 'UTF-8') do |xml|
          xml['inv'].accounting(namespaces) {
            xml['typ'].id id
            xml['typ'].ids ids
            xml['typ'].accounting_type accounting_type
          }
        end
      end
    end
  end
end
