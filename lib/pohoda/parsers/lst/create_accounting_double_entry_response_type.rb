module Pohoda
  module Parsers
    module Lst
      class CreateAccountingDoubleEntryResponseType
        include ParserCore::BaseParser

        def import_details
          submodel_at(Rdc::ImportDetailsType, 'lst:importDetails')
        end

        def create_accounting_response
          array_of_at(Lst::CreateAccountingResponseType, ['lst:createAccountingResponse'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:import_details] = import_details.to_h_with_attrs if has? 'lst:importDetails'
          hash[:create_accounting_response] = create_accounting_response.map(&:to_h_with_attrs) if has? 'lst:createAccountingResponse'

          hash
        end
      end
    end
  end
end