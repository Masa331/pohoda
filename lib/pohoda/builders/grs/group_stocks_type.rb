module Pohoda
  module Builders
    module Grs
      class GroupStocksType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('grs:actionType', data[:action_type]) if data.key? :action_type
          if data.key? :group_stocks_header
            root << Grs::GroupStocksHeaderType.new('groupStocksHeader', data[:group_stocks_header]).builder
          end
          if data.key? :group_stocks_detail
            root << Grs::GroupStocksDetailType.new('groupStocksDetail', data[:group_stocks_detail]).builder
          end

          root
        end
      end
    end
  end
end