module Pohoda
  module Builders
    module Str
      class SubStoragesType2
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('str:itemStorage', data[:item_storage]) if data.key? :item_storage

          root
        end
      end
    end
  end
end