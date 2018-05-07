module Pohoda
  module Builders
    module Typ
      class DetailEETType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('typ:numberOfDocument', data[:number_of_document]) if data.key? :number_of_document
          root << build_element('typ:dateOfSale', data[:date_of_sale]) if data.key? :date_of_sale
          root << build_element('typ:price', data[:price]) if data.key? :price
          root << build_element('typ:PKP', data[:pkp]) if data.key? :pkp
          root << build_element('typ:BKP', data[:bkp]) if data.key? :bkp
          root << build_element('typ:FIK', data[:fik]) if data.key? :fik
          root << build_element('typ:establishment', data[:establishment]) if data.key? :establishment
          root << build_element('typ:cashDevice', data[:cash_device]) if data.key? :cash_device
          root << build_element('typ:mode', data[:mode]) if data.key? :mode
          root << build_element('typ:dateOfSend', data[:date_of_send]) if data.key? :date_of_send
          root << build_element('typ:dateOfAcceptance', data[:date_of_acceptance]) if data.key? :date_of_acceptance
          root << build_element('typ:testMode', data[:test_mode]) if data.key? :test_mode
          root << build_element('typ:VATIdOfPayer', data[:vat_id_of_payer]) if data.key? :vat_id_of_payer
          root << build_element('typ:VATIdOfAuthPayer', data[:vat_id_of_auth_payer]) if data.key? :vat_id_of_auth_payer
          root << build_element('typ:priceExempt', data[:price_exempt]) if data.key? :price_exempt
          root << build_element('typ:priceBasic', data[:price_basic]) if data.key? :price_basic
          root << build_element('typ:VATBasic', data[:vat_basic]) if data.key? :vat_basic
          root << build_element('typ:priceReduced', data[:price_reduced]) if data.key? :price_reduced
          root << build_element('typ:VATReduced', data[:vat_reduced]) if data.key? :vat_reduced
          root << build_element('typ:priceSecondReduced', data[:price_second_reduced]) if data.key? :price_second_reduced
          root << build_element('typ:VATSecondReduced', data[:vat_second_reduced]) if data.key? :vat_second_reduced
          root << build_element('typ:travelService', data[:travel_service]) if data.key? :travel_service
          root << build_element('typ:usedGoodsBasic', data[:used_goods_basic]) if data.key? :used_goods_basic
          root << build_element('typ:usedGoodsFirstReduced', data[:used_goods_first_reduced]) if data.key? :used_goods_first_reduced
          root << build_element('typ:usedGoodsSecondReduced', data[:used_goods_second_reduced]) if data.key? :used_goods_second_reduced
          root << build_element('typ:forApply', data[:for_apply]) if data.key? :for_apply
          root << build_element('typ:apply', data[:apply]) if data.key? :apply
          root << build_element('typ:firstSending', data[:first_sending]) if data.key? :first_sending
          root << build_element('typ:UUID', data[:uuid]) if data.key? :uuid
          root << build_element('typ:protocolVersion', data[:protocol_version]) if data.key? :protocol_version

          root
        end
      end
    end
  end
end