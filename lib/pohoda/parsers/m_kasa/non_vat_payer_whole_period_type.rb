module Pohoda
  module Parsers
    module MKasa
      class NonVatPayerWholePeriodType
        include ParserCore::BaseParser

        def identified_person
          at 'mKasa:identifiedPerson'
        end

        def identified_person_attributes
          attributes_at 'mKasa:identifiedPerson'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:identified_person] = identified_person if has? 'mKasa:identifiedPerson'
          hash[:identified_person_attributes] = identified_person_attributes if has? 'mKasa:identifiedPerson'

          hash
        end
      end
    end
  end
end