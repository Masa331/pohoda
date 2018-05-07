module Pohoda
  module Parsers
    module MKasa
      class NonVatPayerWholePeriodType
        include ParserCore::BaseParser

        def identified_person
          at 'mKasa:identifiedPerson'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:identified_person] = identified_person if has? 'mKasa:identifiedPerson'

          hash
        end
      end
    end
  end
end