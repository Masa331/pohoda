module Pohoda
  module Parsers
    module Typ
      class DetailEETType
        include ParserCore::BaseParser

        def number_of_document
          at 'typ:numberOfDocument'
        end

        def date_of_sale
          at 'typ:dateOfSale'
        end

        def price
          at 'typ:price'
        end

        def pkp
          at 'typ:PKP'
        end

        def bkp
          at 'typ:BKP'
        end

        def fik
          at 'typ:FIK'
        end

        def establishment
          at 'typ:establishment'
        end

        def cash_device
          at 'typ:cashDevice'
        end

        def mode
          at 'typ:mode'
        end

        def date_of_send
          at 'typ:dateOfSend'
        end

        def date_of_acceptance
          at 'typ:dateOfAcceptance'
        end

        def test_mode
          at 'typ:testMode'
        end

        def vat_id_of_payer
          at 'typ:VATIdOfPayer'
        end

        def vat_id_of_auth_payer
          at 'typ:VATIdOfAuthPayer'
        end

        def price_exempt
          at 'typ:priceExempt'
        end

        def price_basic
          at 'typ:priceBasic'
        end

        def vat_basic
          at 'typ:VATBasic'
        end

        def price_reduced
          at 'typ:priceReduced'
        end

        def vat_reduced
          at 'typ:VATReduced'
        end

        def price_second_reduced
          at 'typ:priceSecondReduced'
        end

        def vat_second_reduced
          at 'typ:VATSecondReduced'
        end

        def travel_service
          at 'typ:travelService'
        end

        def used_goods_basic
          at 'typ:usedGoodsBasic'
        end

        def used_goods_first_reduced
          at 'typ:usedGoodsFirstReduced'
        end

        def used_goods_second_reduced
          at 'typ:usedGoodsSecondReduced'
        end

        def for_apply
          at 'typ:forApply'
        end

        def apply
          at 'typ:apply'
        end

        def first_sending
          at 'typ:firstSending'
        end

        def uuid
          at 'typ:UUID'
        end

        def protocol_version
          at 'typ:protocolVersion'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:number_of_document] = number_of_document if has? 'typ:numberOfDocument'
          hash[:date_of_sale] = date_of_sale if has? 'typ:dateOfSale'
          hash[:price] = price if has? 'typ:price'
          hash[:pkp] = pkp if has? 'typ:PKP'
          hash[:bkp] = bkp if has? 'typ:BKP'
          hash[:fik] = fik if has? 'typ:FIK'
          hash[:establishment] = establishment if has? 'typ:establishment'
          hash[:cash_device] = cash_device if has? 'typ:cashDevice'
          hash[:mode] = mode if has? 'typ:mode'
          hash[:date_of_send] = date_of_send if has? 'typ:dateOfSend'
          hash[:date_of_acceptance] = date_of_acceptance if has? 'typ:dateOfAcceptance'
          hash[:test_mode] = test_mode if has? 'typ:testMode'
          hash[:vat_id_of_payer] = vat_id_of_payer if has? 'typ:VATIdOfPayer'
          hash[:vat_id_of_auth_payer] = vat_id_of_auth_payer if has? 'typ:VATIdOfAuthPayer'
          hash[:price_exempt] = price_exempt if has? 'typ:priceExempt'
          hash[:price_basic] = price_basic if has? 'typ:priceBasic'
          hash[:vat_basic] = vat_basic if has? 'typ:VATBasic'
          hash[:price_reduced] = price_reduced if has? 'typ:priceReduced'
          hash[:vat_reduced] = vat_reduced if has? 'typ:VATReduced'
          hash[:price_second_reduced] = price_second_reduced if has? 'typ:priceSecondReduced'
          hash[:vat_second_reduced] = vat_second_reduced if has? 'typ:VATSecondReduced'
          hash[:travel_service] = travel_service if has? 'typ:travelService'
          hash[:used_goods_basic] = used_goods_basic if has? 'typ:usedGoodsBasic'
          hash[:used_goods_first_reduced] = used_goods_first_reduced if has? 'typ:usedGoodsFirstReduced'
          hash[:used_goods_second_reduced] = used_goods_second_reduced if has? 'typ:usedGoodsSecondReduced'
          hash[:for_apply] = for_apply if has? 'typ:forApply'
          hash[:apply] = apply if has? 'typ:apply'
          hash[:first_sending] = first_sending if has? 'typ:firstSending'
          hash[:uuid] = uuid if has? 'typ:UUID'
          hash[:protocol_version] = protocol_version if has? 'typ:protocolVersion'

          hash
        end
      end
    end
  end
end