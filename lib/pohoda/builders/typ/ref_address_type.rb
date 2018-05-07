module Pohoda
  module Builders
    module Typ
      class RefAddressType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('typ:refAD', data[:ref_ad]) if data.key? :ref_ad
          if data.key? :ext_id
            root << Typ::ExtIdType.new('extId', data[:ext_id]).builder
          end
          if data.key? :address
            root << Typ::AddressType.new('address', data[:address]).builder
          end

          root
        end
      end
    end
  end
end