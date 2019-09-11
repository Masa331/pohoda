module Pohoda
  module Parsers
    module Bal
      class ForeignCurrencyType
        include ParserCore::BaseParser

        def currency
          submodel_at(Typ::RefType, 'bal:currency')
        end

        def amount_md
          at 'bal:amountMD'
        end

        def amount_md_attributes
          attributes_at 'bal:amountMD'
        end

        def amount_d
          at 'bal:amountD'
        end

        def amount_d_attributes
          attributes_at 'bal:amountD'
        end

        def amount_remain
          at 'bal:amountRemain'
        end

        def amount_remain_attributes
          attributes_at 'bal:amountRemain'
        end

        def rate
          at 'bal:rate'
        end

        def rate_attributes
          attributes_at 'bal:rate'
        end

        def amount
          at 'bal:amount'
        end

        def amount_attributes
          attributes_at 'bal:amount'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:currency] = currency.to_h if has? 'bal:currency'
          hash[:amount_md] = amount_md if has? 'bal:amountMD'
          hash[:amount_md_attributes] = amount_md_attributes if has? 'bal:amountMD'
          hash[:amount_d] = amount_d if has? 'bal:amountD'
          hash[:amount_d_attributes] = amount_d_attributes if has? 'bal:amountD'
          hash[:amount_remain] = amount_remain if has? 'bal:amountRemain'
          hash[:amount_remain_attributes] = amount_remain_attributes if has? 'bal:amountRemain'
          hash[:rate] = rate if has? 'bal:rate'
          hash[:rate_attributes] = rate_attributes if has? 'bal:rate'
          hash[:amount] = amount if has? 'bal:amount'
          hash[:amount_attributes] = amount_attributes if has? 'bal:amount'

          hash
        end
      end
    end
  end
end