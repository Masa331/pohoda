module Pohoda
  module Builders
    module Lst
      class ListContractType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

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