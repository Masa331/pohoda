module Pohoda
  module Parsers
    module Acp
      class ValidityActionType
        include ParserCore::BaseParser

        def date_from
          at 'acp:dateFrom'
        end

        def date_from_attributes
          attributes_at 'acp:dateFrom'
        end

        def date_till
          at 'acp:dateTill'
        end

        def date_till_attributes
          attributes_at 'acp:dateTill'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:date_from] = date_from if has? 'acp:dateFrom'
          hash[:date_from_attributes] = date_from_attributes if has? 'acp:dateFrom'
          hash[:date_till] = date_till if has? 'acp:dateTill'
          hash[:date_till_attributes] = date_till_attributes if has? 'acp:dateTill'

          hash
        end
      end
    end
  end
end