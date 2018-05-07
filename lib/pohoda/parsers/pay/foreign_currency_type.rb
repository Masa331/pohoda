module Pohoda
  module Parsers
    module Pay
      class ForeignCurrencyType
        include ParserCore::BaseParser

        def currency
          submodel_at(Typ::RefType, 'pay:currency')
        end

        def rate
          at 'pay:rate'
        end

        def amount
          at 'pay:amount'
        end

        def rate_automaticaly
          at 'pay:rateAutomaticaly'
        end

        def use_yesterday_rate
          at 'pay:useYesterdayRate'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:currency] = currency.to_h_with_attrs if has? 'pay:currency'
          hash[:rate] = rate if has? 'pay:rate'
          hash[:amount] = amount if has? 'pay:amount'
          hash[:rate_automaticaly] = rate_automaticaly if has? 'pay:rateAutomaticaly'
          hash[:use_yesterday_rate] = use_yesterday_rate if has? 'pay:useYesterdayRate'

          hash
        end
      end
    end
  end
end