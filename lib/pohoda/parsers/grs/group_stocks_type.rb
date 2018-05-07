module Pohoda
  module Parsers
    module Grs
      class GroupStocksType
        include ParserCore::BaseParser

        def action_type
          at 'grs:actionType'
        end

        def group_stocks_header
          submodel_at(Grs::GroupStocksHeaderType, 'grs:groupStocksHeader')
        end

        def group_stocks_detail
          submodel_at(Grs::GroupStocksDetailType, 'grs:groupStocksDetail')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:action_type] = action_type if has? 'grs:actionType'
          hash[:group_stocks_header] = group_stocks_header.to_h_with_attrs if has? 'grs:groupStocksHeader'
          hash[:group_stocks_detail] = group_stocks_detail.to_h_with_attrs if has? 'grs:groupStocksDetail'

          hash
        end
      end
    end
  end
end