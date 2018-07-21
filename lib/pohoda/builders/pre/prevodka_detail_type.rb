module Pohoda
  module Builders
    module Pre
      class PrevodkaDetailType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          if data.key? :prevodka_item
            data[:prevodka_item].each { |i| root << Pre::PrevodkaItemType.new('pre:prevodkaItem', i).builder }
          end

          root
        end
      end
    end
  end
end