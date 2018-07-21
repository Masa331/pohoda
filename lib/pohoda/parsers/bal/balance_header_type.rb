module Pohoda
  module Parsers
    module Bal
      class BalanceHeaderType
        include ParserCore::BaseParser

        def date_to
          at 'bal:dateTo'
        end

        def date_to_attributes
          attributes_at 'bal:dateTo'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:date_to] = date_to if has? 'bal:dateTo'
          hash[:date_to_attributes] = date_to_attributes if has? 'bal:dateTo'

          hash
        end
      end
    end
  end
end