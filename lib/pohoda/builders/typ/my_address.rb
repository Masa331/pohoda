module Pohoda
  module Builders
    module Typ
      class MyAddress
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :address
            root << Typ::AddressInternetType.new('typ:address', data[:address]).builder
          end
          if data.key? :establishment
            root << Typ::EstablishmentType.new('typ:establishment', data[:establishment]).builder
          end

          root
        end
      end
    end
  end
end