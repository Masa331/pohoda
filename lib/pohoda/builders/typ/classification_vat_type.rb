module Pohoda
  module Builders
    module Typ
      class ClassificationVATType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          root << build_element('typ:id', data[:id], data[:id_attributes]) if data.key? :id
          root << build_element('typ:ids', data[:ids], data[:ids_attributes]) if data.key? :ids
          root << build_element('typ:classificationVATType', data[:classification_vat_type], data[:classification_vat_type_attributes]) if data.key? :classification_vat_type

          root
        end
      end
    end
  end
end