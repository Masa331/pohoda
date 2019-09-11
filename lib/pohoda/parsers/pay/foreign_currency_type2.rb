module Pohoda
  module Parsers
    module Pay
      class ForeignCurrencyType2
        include ParserCore::BaseParser

        def currency
          submodel_at(Typ::RefType, 'pay:currency')
        end

        def rate
          at 'pay:rate'
        end

        def rate_attributes
          attributes_at 'pay:rate'
        end

        def amount
          at 'pay:amount'
        end

        def amount_attributes
          attributes_at 'pay:amount'
        end

        def rate_automaticaly
          at 'pay:rateAutomaticaly'
        end

        def rate_automaticaly_attributes
          attributes_at 'pay:rateAutomaticaly'
        end

        def use_yesterday_rate
          at 'pay:useYesterdayRate'
        end

        def use_yesterday_rate_attributes
          attributes_at 'pay:useYesterdayRate'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:currency] = currency.to_h if has? 'pay:currency'
          hash[:rate] = rate if has? 'pay:rate'
          hash[:rate_attributes] = rate_attributes if has? 'pay:rate'
          hash[:amount] = amount if has? 'pay:amount'
          hash[:amount_attributes] = amount_attributes if has? 'pay:amount'
          hash[:rate_automaticaly] = rate_automaticaly if has? 'pay:rateAutomaticaly'
          hash[:rate_automaticaly_attributes] = rate_automaticaly_attributes if has? 'pay:rateAutomaticaly'
          hash[:use_yesterday_rate] = use_yesterday_rate if has? 'pay:useYesterdayRate'
          hash[:use_yesterday_rate_attributes] = use_yesterday_rate_attributes if has? 'pay:useYesterdayRate'

          hash
        end
      end
    end
  end
end