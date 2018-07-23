module Pohoda
  module Builders
    module Lst
      class ListOfferType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          super.nodes.each do |n|
            root << n
          end

          if data.key? :offer
            data[:offer].each { |i| root << Ofr::OfferType.new('lst:offer', i).builder }
          end

          root
        end
      end
    end
  end
end