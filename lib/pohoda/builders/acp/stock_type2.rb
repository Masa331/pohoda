module Pohoda
  module Builders
    module Acp
      class StockType2
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('acp:id', data[:id]) if data.key? :id
          root << build_element('acp:code', data[:code]) if data.key? :code

          root
        end
      end
    end
  end
end