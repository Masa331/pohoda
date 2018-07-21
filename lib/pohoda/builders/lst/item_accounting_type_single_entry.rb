module Pohoda
  module Builders
    module Lst
      class ItemAccountingTypeSingleEntry
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          root
        end
      end
    end
  end
end