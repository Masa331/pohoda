module Pohoda
  module Builders
    module Typ
      class DetailEETType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('typ:numberOfDocument', data[:number_of_document], data[:number_of_document_attributes]) if data.key? :number_of_document
          root << build_element('typ:dateOfSale', data[:date_of_sale], data[:date_of_sale_attributes]) if data.key? :date_of_sale
          root << build_element('typ:price', data[:price], data[:price_attributes]) if data.key? :price
          root << build_element('typ:PKP', data[:pkp], data[:pkp_attributes]) if data.key? :pkp
          root << build_element('typ:BKP', data[:bkp], data[:bkp_attributes]) if data.key? :bkp
          root << build_element('typ:FIK', data[:fik], data[:fik_attributes]) if data.key? :fik
          root << build_element('typ:establishment', data[:establishment], data[:establishment_attributes]) if data.key? :establishment
          root << build_element('typ:cashDevice', data[:cash_device], data[:cash_device_attributes]) if data.key? :cash_device
          root << build_element('typ:mode', data[:mode], data[:mode_attributes]) if data.key? :mode
          root << build_element('typ:dateOfSend', data[:date_of_send], data[:date_of_send_attributes]) if data.key? :date_of_send
          root << build_element('typ:dateOfAcceptance', data[:date_of_acceptance], data[:date_of_acceptance_attributes]) if data.key? :date_of_acceptance
          root << build_element('typ:testMode', data[:test_mode], data[:test_mode_attributes]) if data.key? :test_mode
          root << build_element('typ:VATIdOfPayer', data[:vat_id_of_payer], data[:vat_id_of_payer_attributes]) if data.key? :vat_id_of_payer
          root << build_element('typ:VATIdOfAuthPayer', data[:vat_id_of_auth_payer], data[:vat_id_of_auth_payer_attributes]) if data.key? :vat_id_of_auth_payer
          root << build_element('typ:priceExempt', data[:price_exempt], data[:price_exempt_attributes]) if data.key? :price_exempt
          root << build_element('typ:priceBasic', data[:price_basic], data[:price_basic_attributes]) if data.key? :price_basic
          root << build_element('typ:VATBasic', data[:vat_basic], data[:vat_basic_attributes]) if data.key? :vat_basic
          root << build_element('typ:priceReduced', data[:price_reduced], data[:price_reduced_attributes]) if data.key? :price_reduced
          root << build_element('typ:VATReduced', data[:vat_reduced], data[:vat_reduced_attributes]) if data.key? :vat_reduced
          root << build_element('typ:priceSecondReduced', data[:price_second_reduced], data[:price_second_reduced_attributes]) if data.key? :price_second_reduced
          root << build_element('typ:VATSecondReduced', data[:vat_second_reduced], data[:vat_second_reduced_attributes]) if data.key? :vat_second_reduced
          root << build_element('typ:travelService', data[:travel_service], data[:travel_service_attributes]) if data.key? :travel_service
          root << build_element('typ:usedGoodsBasic', data[:used_goods_basic], data[:used_goods_basic_attributes]) if data.key? :used_goods_basic
          root << build_element('typ:usedGoodsFirstReduced', data[:used_goods_first_reduced], data[:used_goods_first_reduced_attributes]) if data.key? :used_goods_first_reduced
          root << build_element('typ:usedGoodsSecondReduced', data[:used_goods_second_reduced], data[:used_goods_second_reduced_attributes]) if data.key? :used_goods_second_reduced
          root << build_element('typ:forApply', data[:for_apply], data[:for_apply_attributes]) if data.key? :for_apply
          root << build_element('typ:apply', data[:apply], data[:apply_attributes]) if data.key? :apply
          root << build_element('typ:firstSending', data[:first_sending], data[:first_sending_attributes]) if data.key? :first_sending
          root << build_element('typ:UUID', data[:uuid], data[:uuid_attributes]) if data.key? :uuid
          root << build_element('typ:protocolVersion', data[:protocol_version], data[:protocol_version_attributes]) if data.key? :protocol_version

          root
        end
      end
    end
  end
end