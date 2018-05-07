module Pohoda
  module Parsers
    module Enq
      class EnquiryDetailType
        include ParserCore::BaseParser

        def enquiry_item
          array_of_at(Enq::EnquiryItemType, ['enq:enquiryItem'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:enquiry_item] = enquiry_item.map(&:to_h_with_attrs) if has? 'enq:enquiryItem'

          hash
        end
      end
    end
  end
end