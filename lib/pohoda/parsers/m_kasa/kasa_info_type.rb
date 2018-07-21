module Pohoda
  module Parsers
    module MKasa
      class KasaInfoType
        include ParserCore::BaseParser

        def id
          at 'mKasa:id'
        end

        def id_attributes
          attributes_at 'mKasa:id'
        end

        def name
          at 'mKasa:name'
        end

        def name_attributes
          attributes_at 'mKasa:name'
        end

        def description
          at 'mKasa:description'
        end

        def description_attributes
          attributes_at 'mKasa:description'
        end

        def device_guid
          at 'mKasa:deviceGuid'
        end

        def device_guid_attributes
          attributes_at 'mKasa:deviceGuid'
        end

        def establishment
          submodel_at(MKasa::KasaEstablishmentType, 'mKasa:establishment')
        end

        def centre
          submodel_at(Typ::RefType, 'mKasa:centre')
        end

        def default_store
          submodel_at(Typ::RefType, 'mKasa:defaultStore')
        end

        def default_selling_price
          submodel_at(Typ::RefType, 'mKasa:defaultSellingPrice')
        end

        def default_payment_type
          submodel_at(Typ::RefType, 'mKasa:defaultPaymentType')
        end

        def text
          at 'mKasa:text'
        end

        def text_attributes
          attributes_at 'mKasa:text'
        end

        def footer
          at 'mKasa:footer'
        end

        def footer_attributes
          attributes_at 'mKasa:footer'
        end

        def pay_vat
          at 'mKasa:payVat'
        end

        def pay_vat_attributes
          attributes_at 'mKasa:payVat'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'mKasa:id'
          hash[:id_attributes] = id_attributes if has? 'mKasa:id'
          hash[:name] = name if has? 'mKasa:name'
          hash[:name_attributes] = name_attributes if has? 'mKasa:name'
          hash[:description] = description if has? 'mKasa:description'
          hash[:description_attributes] = description_attributes if has? 'mKasa:description'
          hash[:device_guid] = device_guid if has? 'mKasa:deviceGuid'
          hash[:device_guid_attributes] = device_guid_attributes if has? 'mKasa:deviceGuid'
          hash[:establishment] = establishment.to_h if has? 'mKasa:establishment'
          hash[:centre] = centre.to_h if has? 'mKasa:centre'
          hash[:default_store] = default_store.to_h if has? 'mKasa:defaultStore'
          hash[:default_selling_price] = default_selling_price.to_h if has? 'mKasa:defaultSellingPrice'
          hash[:default_payment_type] = default_payment_type.to_h if has? 'mKasa:defaultPaymentType'
          hash[:text] = text if has? 'mKasa:text'
          hash[:text_attributes] = text_attributes if has? 'mKasa:text'
          hash[:footer] = footer if has? 'mKasa:footer'
          hash[:footer_attributes] = footer_attributes if has? 'mKasa:footer'
          hash[:pay_vat] = pay_vat if has? 'mKasa:payVat'
          hash[:pay_vat_attributes] = pay_vat_attributes if has? 'mKasa:payVat'

          hash
        end
      end
    end
  end
end