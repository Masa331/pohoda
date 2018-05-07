module Pohoda
  module Parsers
    module SEET
      class SendEETType
        include ParserCore::BaseParser

        def record
          submodel_at(SEET::RecordSendEETType, 'sEET:record')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:record] = record.to_h_with_attrs if has? 'sEET:record'

          hash
        end
      end
    end
  end
end