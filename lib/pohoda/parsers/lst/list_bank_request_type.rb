module Pohoda
  module Parsers
    module Lst
      class ListBankRequestType
        include ParserCore::BaseParser

        def request_bank
          submodel_at(Ftr::RequestBankType, 'lst:requestBank')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:request_bank] = request_bank.to_h_with_attrs if has? 'lst:requestBank'

          hash
        end
      end
    end
  end
end