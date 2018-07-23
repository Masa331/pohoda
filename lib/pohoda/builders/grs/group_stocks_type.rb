module Pohoda
  module Builders
    module Grs
      class GroupStocksType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('grs:actionType', data[:action_type], data[:action_type_attributes]) if data.key? :action_type
          if data.key? :group_stocks_header
            root << Grs::GroupStocksHeaderType.new('grs:groupStocksHeader', data[:group_stocks_header]).builder
          end
          if data.key? :group_stocks_detail
            element = Ox::Element.new('grs:groupStocksDetail')
            data[:group_stocks_detail].each { |i| element << Gr::VariantsItemType.new('grs:variant', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end