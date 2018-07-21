module Pohoda
  module Builders
    module Typ
      class RefAddressType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          root << build_element('typ:refAD', data[:ref_ad], data[:ref_ad_attributes]) if data.key? :ref_ad
          if data.key? :ext_id
            root << Typ::ExtIdType.new('typ:extId', data[:ext_id]).builder
          end
          if data.key? :address
            root << Typ::AddressType.new('typ:address', data[:address]).builder
          end

          root
        end
      end
    end
  end
end