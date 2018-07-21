module Pohoda
  module Parsers
    module Lst
      class ListVoucherType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def voucher
          array_of_at(Vch::VoucherType, ['lst:voucher'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:voucher] = voucher.map(&:to_h) if has? 'lst:voucher'

          hash
          super.merge(hash)
        end
      end
    end
  end
end