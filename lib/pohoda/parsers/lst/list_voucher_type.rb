module Pohoda
  module Parsers
    module Lst
      class ListVoucherType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def voucher
          array_of_at(Vch::VoucherType, ['lst:voucher'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:voucher] = voucher.map(&:to_h_with_attrs) if has? 'lst:voucher'

          hash
          super.merge(hash)
        end
      end
    end
  end
end