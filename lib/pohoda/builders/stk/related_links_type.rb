module Pohoda
  module Builders
    module Stk
      class RelatedLinksType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :related_link
            data[:related_link].each { |i| root << Stk::RelatedLinkType.new('stk:relatedLink', i).builder }
          end

          root
        end
      end
    end
  end
end