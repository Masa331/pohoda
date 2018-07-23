module Pohoda
  module Builders
    module Lst
      class ListInvoiceRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :request_invoice
            root << Ftr::RequestInvoiceType.new('lst:requestInvoice', data[:request_invoice]).builder
          end

          root
        end
      end
    end
  end
end