module Pohoda
  module Builders
    module Idp
      class IndividualPriceType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('idp:partnerIdentity', data[:partner_identity], data[:partner_identity_attributes]) if data.key? :partner_identity
          if data.key? :set_prices
            root << Idp::SetPricesType.new('idp:setPrices', data[:set_prices]).builder
          end

          root
        end
      end
    end
  end
end