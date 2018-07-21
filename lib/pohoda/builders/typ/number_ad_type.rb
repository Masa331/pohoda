module Pohoda
  module Builders
    module Typ
      class NumberADType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          root << build_element('typ:id', data[:id], data[:id_attributes]) if data.key? :id
          root << build_element('typ:ids', data[:ids], data[:ids_attributes]) if data.key? :ids
          root << build_element('typ:numberRequested', data[:number_requested], data[:number_requested_attributes]) if data.key? :number_requested

          root
        end
      end
    end
  end
end