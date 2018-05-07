module Pohoda
  module Builders
    module Lst
      class RequestBalanceType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('lst:dateTo', data[:date_to]) if data.key? :date_to
          root << build_element('lst:adjustTo', data[:adjust_to]) if data.key? :adjust_to
          root << build_element('lst:groupByDoc', data[:group_by_doc]) if data.key? :group_by_doc
          root << build_element('lst:removeBalancedRec', data[:remove_balanced_rec]) if data.key? :remove_balanced_rec
          root << build_element('lst:pairing', data[:pairing]) if data.key? :pairing
          root << build_element('lst:userFilterName', data[:user_filter_name]) if data.key? :user_filter_name

          root
        end
      end
    end
  end
end