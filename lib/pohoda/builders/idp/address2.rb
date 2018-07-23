module Pohoda
  module Builders
    module Idp
      class Address2
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('idp:id', data[:id], data[:id_attributes]) if data.key? :id
          if data.key? :ext_id
            root << Typ::ExtIdType.new('idp:extId', data[:ext_id]).builder
          end

          root
        end
      end
    end
  end
end