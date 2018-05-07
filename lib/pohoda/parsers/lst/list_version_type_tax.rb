module Pohoda
  module Parsers
    module Lst
      class ListVersionTypeTax
        include ParserCore::BaseParser

        def import_details
          submodel_at(Rdc::ImportDetailsType, 'lst:importDetails')
        end

        def import_data
          at 'lst:importData'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:import_details] = import_details.to_h_with_attrs if has? 'lst:importDetails'
          hash[:import_data] = import_data if has? 'lst:importData'

          hash
        end
      end
    end
  end
end