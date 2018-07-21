module Pohoda
  module Parsers
    module Lst
      class ListVoucherRequestType
        include ParserCore::BaseParser

        def request_voucher
          submodel_at(Ftr::RequestVoucherType, 'lst:requestVoucher')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:request_voucher] = request_voucher.to_h if has? 'lst:requestVoucher'

          hash
        end
      end
    end
  end
end