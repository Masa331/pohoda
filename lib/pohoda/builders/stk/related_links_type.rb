module Pohoda
  module Builders
    module Stk
      class RelatedLinksType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          if data.key? :related_link
            data[:related_link].each { |i| root << Stk::RelatedLinkType.new('stk:relatedLink', i).builder }
          end

          root
        end
      end
    end
  end
end