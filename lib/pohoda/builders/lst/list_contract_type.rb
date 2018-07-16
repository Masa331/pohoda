module Pohoda
  module Builders
    module Lst
      class ListContractType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          super.nodes.each do |n|
            root << n
          end

          root << build_element('lst:itemContract', data[:item_contract], data[:item_contract_attributes]) if data.key? :item_contract

          root
        end
      end
    end
  end
end