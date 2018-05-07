module Pohoda
  module Parsers
    module Lst
      class ListEnquiryType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def enquiry
          array_of_at(Enq::EnquiryType, ['lst:enquiry'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:enquiry] = enquiry.map(&:to_h_with_attrs) if has? 'lst:enquiry'

          hash
          super.merge(hash)
        end
      end
    end
  end
end