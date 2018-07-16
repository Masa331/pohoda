module Pohoda
  module Builders
    module Typ
      class Address
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('typ:id', data[:id], data[:id_attributes]) if data.key? :id
          if data.key? :ext_id
            data[:ext_id].each { |i| root << Typ::ExtIdType.new('typ:extId', i).builder }
          end
          if data.key? :address
            root << Typ::AddressType.new('typ:address', data[:address]).builder
          end
          if data.key? :ship_to_address
            data[:ship_to_address].each { |i| root << Typ::ShipToAddressType.new('typ:shipToAddress', i).builder }
          end

          root
        end
      end
    end
  end
end