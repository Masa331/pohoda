module Pohoda
  module Parsers
    module Idp
      class IndividualPriceType
        include ParserCore::BaseParser

        def partner_identity
          at 'idp:partnerIdentity'
        end

        def partner_identity_attributes
          attributes_at 'idp:partnerIdentity'
        end

        def set_prices
          submodel_at(Idp::SetPricesType, 'idp:setPrices')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:partner_identity] = partner_identity if has? 'idp:partnerIdentity'
          hash[:partner_identity_attributes] = partner_identity_attributes if has? 'idp:partnerIdentity'
          hash[:set_prices] = set_prices.to_h if has? 'idp:setPrices'

          hash
        end
      end
    end
  end
end