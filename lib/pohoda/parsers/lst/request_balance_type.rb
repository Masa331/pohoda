module Pohoda
  module Parsers
    module Lst
      class RequestBalanceType
        include ParserCore::BaseParser

        def date_to
          at 'lst:dateTo'
        end

        def date_to_attributes
          attributes_at 'lst:dateTo'
        end

        def adjust_to
          at 'lst:adjustTo'
        end

        def adjust_to_attributes
          attributes_at 'lst:adjustTo'
        end

        def group_by_doc
          at 'lst:groupByDoc'
        end

        def group_by_doc_attributes
          attributes_at 'lst:groupByDoc'
        end

        def remove_balanced_rec
          at 'lst:removeBalancedRec'
        end

        def remove_balanced_rec_attributes
          attributes_at 'lst:removeBalancedRec'
        end

        def pairing
          at 'lst:pairing'
        end

        def pairing_attributes
          attributes_at 'lst:pairing'
        end

        def user_filter_name
          at 'lst:userFilterName'
        end

        def user_filter_name_attributes
          attributes_at 'lst:userFilterName'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:date_to] = date_to if has? 'lst:dateTo'
          hash[:date_to_attributes] = date_to_attributes if has? 'lst:dateTo'
          hash[:adjust_to] = adjust_to if has? 'lst:adjustTo'
          hash[:adjust_to_attributes] = adjust_to_attributes if has? 'lst:adjustTo'
          hash[:group_by_doc] = group_by_doc if has? 'lst:groupByDoc'
          hash[:group_by_doc_attributes] = group_by_doc_attributes if has? 'lst:groupByDoc'
          hash[:remove_balanced_rec] = remove_balanced_rec if has? 'lst:removeBalancedRec'
          hash[:remove_balanced_rec_attributes] = remove_balanced_rec_attributes if has? 'lst:removeBalancedRec'
          hash[:pairing] = pairing if has? 'lst:pairing'
          hash[:pairing_attributes] = pairing_attributes if has? 'lst:pairing'
          hash[:user_filter_name] = user_filter_name if has? 'lst:userFilterName'
          hash[:user_filter_name_attributes] = user_filter_name_attributes if has? 'lst:userFilterName'

          hash
        end
      end
    end
  end
end