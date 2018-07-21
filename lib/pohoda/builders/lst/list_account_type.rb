module Pohoda
  module Builders
    module Lst
      class ListAccountType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          super.nodes.each do |n|
            root << n
          end

          root << build_element('lst:itemAccount', data[:item_account], data[:item_account_attributes]) if data.key? :item_account

          root
        end
      end
    end
  end
end