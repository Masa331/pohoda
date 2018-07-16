module Pohoda
  module Builders
    module Lst
      class ListVoucherRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :request_voucher
            root << Ftr::RequestVoucherType.new('lst:requestVoucher', data[:request_voucher]).builder
          end

          root
        end
      end
    end
  end
end