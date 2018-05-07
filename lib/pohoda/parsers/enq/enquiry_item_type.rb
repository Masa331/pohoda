module Pohoda
  module Parsers
    module Enq
      class EnquiryItemType
        include ParserCore::BaseParser

        def id
          at 'enq:id'
        end

        def text
          at 'enq:text'
        end

        def quantity
          at 'enq:quantity'
        end

        def unit
          at 'enq:unit'
        end

        def coefficient
          at 'enq:coefficient'
        end

        def pay_vat
          at 'enq:payVAT'
        end

        def rate_vat
          at 'enq:rateVAT'
        end

        def percent_vat
          at 'enq:percentVAT'
        end

        def discount_percentage
          at 'enq:discountPercentage'
        end

        def home_currency
          submodel_at(Typ::TypeCurrencyHomeItem, 'enq:homeCurrency')
        end

        def foreign_currency
          submodel_at(Typ::TypeCurrencyForeignItem, 'enq:foreignCurrency')
        end

        def centre
          submodel_at(Typ::RefType, 'enq:centre')
        end

        def activity
          submodel_at(Typ::RefType, 'enq:activity')
        end

        def contract
          submodel_at(Typ::RefType, 'enq:contract')
        end

        def note
          at 'enq:note'
        end

        def code
          at 'enq:code'
        end

        def stock_item
          submodel_at(Typ::StockItemType, 'enq:stockItem')
        end

        def eet_item
          at 'enq:EETItem'
        end

        def parameters
          array_of_at(Typ::ParameterDocType, ['enq:parameters', 'typ:parameter'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'enq:id'
          hash[:text] = text if has? 'enq:text'
          hash[:quantity] = quantity if has? 'enq:quantity'
          hash[:unit] = unit if has? 'enq:unit'
          hash[:coefficient] = coefficient if has? 'enq:coefficient'
          hash[:pay_vat] = pay_vat if has? 'enq:payVAT'
          hash[:rate_vat] = rate_vat if has? 'enq:rateVAT'
          hash[:percent_vat] = percent_vat if has? 'enq:percentVAT'
          hash[:discount_percentage] = discount_percentage if has? 'enq:discountPercentage'
          hash[:home_currency] = home_currency.to_h_with_attrs if has? 'enq:homeCurrency'
          hash[:foreign_currency] = foreign_currency.to_h_with_attrs if has? 'enq:foreignCurrency'
          hash[:centre] = centre.to_h_with_attrs if has? 'enq:centre'
          hash[:activity] = activity.to_h_with_attrs if has? 'enq:activity'
          hash[:contract] = contract.to_h_with_attrs if has? 'enq:contract'
          hash[:note] = note if has? 'enq:note'
          hash[:code] = code if has? 'enq:code'
          hash[:stock_item] = stock_item.to_h_with_attrs if has? 'enq:stockItem'
          hash[:eet_item] = eet_item if has? 'enq:EETItem'
          hash[:parameters] = parameters.map(&:to_h_with_attrs) if has? 'enq:parameters'

          hash
        end
      end
    end
  end
end