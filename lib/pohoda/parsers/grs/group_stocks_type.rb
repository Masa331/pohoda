module Pohoda
  module Parsers
    module Grs
      class GroupStocksType
        include ParserCore::BaseParser

        def action_type
          at 'grs:actionType'
        end

        def action_type_attributes
          attributes_at 'grs:actionType'
        end

        def group_stocks_header
          submodel_at(Grs::GroupStocksHeaderType, 'grs:groupStocksHeader')
        end

        def group_stocks_detail
          array_of_at(Gr::VariantsItemType, ['grs:groupStocksDetail', 'grs:variant'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:action_type] = action_type if has? 'grs:actionType'
          hash[:action_type_attributes] = action_type_attributes if has? 'grs:actionType'
          hash[:group_stocks_header] = group_stocks_header.to_h if has? 'grs:groupStocksHeader'
          hash[:group_stocks_detail] = group_stocks_detail.map(&:to_h) if has? 'grs:groupStocksDetail'

          hash
        end
      end
    end
  end
end