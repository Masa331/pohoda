module Pohoda
  module Builders
    module Typ
      class SourceDocumentType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          root << build_element('typ:id', data[:id], data[:id_attributes]) if data.key? :id
          root << build_element('typ:number', data[:number], data[:number_attributes]) if data.key? :number

          root
        end
      end
    end
  end
end