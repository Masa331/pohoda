module Pohoda
  module Builders
    module Inv
      class InvoiceAdvancePaymentItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('inv:id', data[:id]) if data.key? :id
          if data.key? :source_document
            root << Typ::SourceDocumentType.new('inv:sourceDocument', data[:source_document]).builder
          end
          root << build_element('inv:quantity', data[:quantity]) if data.key? :quantity
          root << build_element('inv:payVAT', data[:pay_vat]) if data.key? :pay_vat
          root << build_element('inv:rateVAT', data[:rate_vat]) if data.key? :rate_vat
          root << build_element('inv:percentVAT', data[:percent_vat]) if data.key? :percent_vat
          root << build_element('inv:discountPercentage', data[:discount_percentage]) if data.key? :discount_percentage
          if data.key? :home_currency
            root << Typ::TypeCurrencyHomeItem2.new('inv:homeCurrency', data[:home_currency]).builder
          end
          if data.key? :foreign_currency
            root << Typ::TypeCurrencyHomeItem2.new('inv:foreignCurrency', data[:foreign_currency]).builder
          end
          root << build_element('inv:note', data[:note]) if data.key? :note
          if data.key? :accounting
            root << Typ::RefType.new('inv:accounting', data[:accounting]).builder
          end
          if data.key? :classification_vat
            root << Typ::ClassificationVATType.new('inv:classificationVAT', data[:classification_vat]).builder
          end
          if data.key? :classification_kvdph
            root << Typ::RefType.new('inv:classificationKVDPH', data[:classification_kvdph]).builder
          end
          if data.key? :centre
            root << Typ::RefType.new('inv:centre', data[:centre]).builder
          end
          if data.key? :activity
            root << Typ::RefType.new('inv:activity', data[:activity]).builder
          end
          if data.key? :contract
            root << Typ::RefType.new('inv:contract', data[:contract]).builder
          end
          root << build_element('inv:voucherEET', data[:voucher_eet]) if data.key? :voucher_eet
          if data.key? :parameters
            element = Ox::Element.new('inv:parameters')
            data[:parameters].each { |i| element << Typ::ParameterDocType.new('typ:parameter', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end