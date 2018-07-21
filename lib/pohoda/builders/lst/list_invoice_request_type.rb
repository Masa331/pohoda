module Pohoda
  module Builders
    module Lst
      class ListInvoiceRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          if data.key? :request_invoice
            root << Ftr::RequestInvoiceType.new('lst:requestInvoice', data[:request_invoice]).builder
          end

          root
        end
      end
    end
  end
end