module Pohoda
  module Parsers
    module Lst
      class RequestBalanceType
        include ParserCore::BaseParser

        def date_to
          at 'lst:dateTo'
        end

        def adjust_to
          at 'lst:adjustTo'
        end

        def group_by_doc
          at 'lst:groupByDoc'
        end

        def remove_balanced_rec
          at 'lst:removeBalancedRec'
        end

        def pairing
          at 'lst:pairing'
        end

        def user_filter_name
          at 'lst:userFilterName'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:date_to] = date_to if has? 'lst:dateTo'
          hash[:adjust_to] = adjust_to if has? 'lst:adjustTo'
          hash[:group_by_doc] = group_by_doc if has? 'lst:groupByDoc'
          hash[:remove_balanced_rec] = remove_balanced_rec if has? 'lst:removeBalancedRec'
          hash[:pairing] = pairing if has? 'lst:pairing'
          hash[:user_filter_name] = user_filter_name if has? 'lst:userFilterName'

          hash
        end
      end
    end
  end
end