module Pohoda
  module Builders
    module MKasa
      class NonVatPayerWholePeriodType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('mKasa:identifiedPerson', data[:identified_person]) if data.key? :identified_person

          root
        end
      end
    end
  end
end