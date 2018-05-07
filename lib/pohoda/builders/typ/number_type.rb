module Pohoda
  module Builders
    module Typ
      class NumberType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('typ:id', data[:id]) if data.key? :id
          root << build_element('typ:ids', data[:ids]) if data.key? :ids
          root << build_element('typ:numberRequested', data[:number_requested]) if data.key? :number_requested

          root
        end
      end
    end
  end
end