module Pohoda
  module Parsers
    module Lst
      class CreateAccountingDoubleEntryResponseType
        include ParserCore::BaseParser

        def import_details
          array_of_at(Rdc::DetailType, ['lst:importDetails', 'rdc:detail'])
        end

        def create_accounting_response
          array_of_at(Lst::CreateAccountingResponseType, ['lst:createAccountingResponse'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:import_details] = import_details.map(&:to_h) if has? 'lst:importDetails'
          hash[:create_accounting_response] = create_accounting_response.map(&:to_h) if has? 'lst:createAccountingResponse'

          hash
        end
      end
    end
  end
end