module Pohoda
  module Parsers
    module Lst
      class ListBankAccountRequestType
        include ParserCore::BaseParser

        def request_bank_account
          submodel_at(Ftr::RequestBankAccountType, 'lst:requestBankAccount')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:request_bank_account] = request_bank_account.to_h if has? 'lst:requestBankAccount'

          hash
        end
      end
    end
  end
end