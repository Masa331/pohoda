module Pohoda
  module Parsers
    module Lst
      class ListBalanceRequestType
        include ParserCore::BaseParser

        def request_balance
          submodel_at(Lst::RequestBalanceType, 'lst:requestBalance')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:request_balance] = request_balance.to_h_with_attrs if has? 'lst:requestBalance'

          hash
        end
      end
    end
  end
end