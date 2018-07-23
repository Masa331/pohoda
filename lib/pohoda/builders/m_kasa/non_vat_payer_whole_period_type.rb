module Pohoda
  module Builders
    module MKasa
      class NonVatPayerWholePeriodType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('mKasa:identifiedPerson', data[:identified_person], data[:identified_person_attributes]) if data.key? :identified_person

          root
        end
      end
    end
  end
end