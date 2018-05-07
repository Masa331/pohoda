module Pohoda
  module Builders
    module Ftr
      class RequestItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :filter
            root << Ftr::FilterIDType.new('filter', data[:filter]).builder
          end

          root
        end
      end
    end
  end
end