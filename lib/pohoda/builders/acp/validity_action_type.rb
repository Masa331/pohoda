module Pohoda
  module Builders
    module Acp
      class ValidityActionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('acp:dateFrom', data[:date_from], data[:date_from_attributes]) if data.key? :date_from
          root << build_element('acp:dateTill', data[:date_till], data[:date_till_attributes]) if data.key? :date_till

          root
        end
      end
    end
  end
end