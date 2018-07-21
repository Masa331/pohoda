module Pohoda
  module Parsers
    module Lst
      class ListVersionTypeTax
        include ParserCore::BaseParser

        def import_details
          array_of_at(Rdc::DetailType, ['lst:importDetails', 'rdc:detail'])
        end

        def import_data
          at 'lst:importData'
        end

        def import_data_attributes
          attributes_at 'lst:importData'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:import_details] = import_details.map(&:to_h) if has? 'lst:importDetails'
          hash[:import_data] = import_data if has? 'lst:importData'
          hash[:import_data_attributes] = import_data_attributes if has? 'lst:importData'

          hash
        end
      end
    end
  end
end