module Pohoda
  module Builders
    module Bal
      class HomeCurrencyType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('bal:amountMD', data[:amount_md], data[:amount_md_attributes]) if data.key? :amount_md
          root << build_element('bal:amountD', data[:amount_d], data[:amount_d_attributes]) if data.key? :amount_d
          root << build_element('bal:amountRemain', data[:amount_remain], data[:amount_remain_attributes]) if data.key? :amount_remain

          root
        end
      end
    end
  end
end