module Pohoda
  module Builders
    module Lst
      class RequestBalanceType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('lst:dateTo', data[:date_to], data[:date_to_attributes]) if data.key? :date_to
          root << build_element('lst:adjustTo', data[:adjust_to], data[:adjust_to_attributes]) if data.key? :adjust_to
          root << build_element('lst:groupByDoc', data[:group_by_doc], data[:group_by_doc_attributes]) if data.key? :group_by_doc
          root << build_element('lst:removeBalancedRec', data[:remove_balanced_rec], data[:remove_balanced_rec_attributes]) if data.key? :remove_balanced_rec
          root << build_element('lst:pairing', data[:pairing], data[:pairing_attributes]) if data.key? :pairing
          root << build_element('lst:userFilterName', data[:user_filter_name], data[:user_filter_name_attributes]) if data.key? :user_filter_name

          root
        end
      end
    end
  end
end