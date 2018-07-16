module Pohoda
  module Builders
    module Ftr
      class RequestOfferType
        include ParserCore::BaseBuilder
        include Ftr::Groups::GroupFilter1

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          mega.each do |r|
            r.nodes.each { |n| root << n }
          end

          root
        end
      end
    end
  end
end