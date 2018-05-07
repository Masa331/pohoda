module Pohoda
  module Builders
    module Idp
      class IndividualPriceType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('idp:partnerIdentity', data[:partner_identity]) if data.key? :partner_identity
          if data.key? :set_prices
            root << Idp::SetPricesType.new('setPrices', data[:set_prices]).builder
          end

          root
        end
      end
    end
  end
end