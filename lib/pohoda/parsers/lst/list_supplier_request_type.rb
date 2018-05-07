module Pohoda
  module Parsers
    module Lst
      class ListSupplierRequestType
        include ParserCore::BaseParser

        def request_supplier
          submodel_at(Ftr::RequestStockType, 'lst:requestSupplier')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:request_supplier] = request_supplier.to_h_with_attrs if has? 'lst:requestSupplier'

          hash
        end
      end
    end
  end
end