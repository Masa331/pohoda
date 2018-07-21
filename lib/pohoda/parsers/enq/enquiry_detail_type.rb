module Pohoda
  module Parsers
    module Enq
      class EnquiryDetailType
        include ParserCore::BaseParser

        def enquiry_item
          array_of_at(Enq::EnquiryItemType, ['enq:enquiryItem'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:enquiry_item] = enquiry_item.map(&:to_h) if has? 'enq:enquiryItem'

          hash
        end
      end
    end
  end
end