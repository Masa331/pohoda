module Pohoda
  module Builders
    module Bal
      class ForeignCurrencyType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :currency
            root << Typ::RefType.new('bal:currency', data[:currency]).builder
          end
          root << build_element('bal:amountMD', data[:amount_md], data[:amount_md_attributes]) if data.key? :amount_md
          root << build_element('bal:amountD', data[:amount_d], data[:amount_d_attributes]) if data.key? :amount_d
          root << build_element('bal:amountRemain', data[:amount_remain], data[:amount_remain_attributes]) if data.key? :amount_remain
          root << build_element('bal:rate', data[:rate], data[:rate_attributes]) if data.key? :rate
          root << build_element('bal:amount', data[:amount], data[:amount_attributes]) if data.key? :amount

          root
        end
      end
    end
  end
end