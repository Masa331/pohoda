module Pohoda
  module Builders
    module Lst
      class ListVoucherRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :request_voucher
            root << Ftr::RequestVoucherType.new('lst:requestVoucher', data[:request_voucher]).builder
          end

          root
        end
      end
    end
  end
end