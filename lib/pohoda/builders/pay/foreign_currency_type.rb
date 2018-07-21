module Pohoda
  module Builders
    module Pay
      class ForeignCurrencyType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          if data.key? :currency
            root << Typ::RefType.new('pay:currency', data[:currency]).builder
          end
          root << build_element('pay:rate', data[:rate], data[:rate_attributes]) if data.key? :rate
          root << build_element('pay:amount', data[:amount], data[:amount_attributes]) if data.key? :amount
          root << build_element('pay:rateAutomaticaly', data[:rate_automaticaly], data[:rate_automaticaly_attributes]) if data.key? :rate_automaticaly
          root << build_element('pay:useYesterdayRate', data[:use_yesterday_rate], data[:use_yesterday_rate_attributes]) if data.key? :use_yesterday_rate

          root
        end
      end
    end
  end
end