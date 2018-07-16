module Pohoda
  module Builders
    module Stk
      class InstrastatType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('stk:goodsCode', data[:goods_code], data[:goods_code_attributes]) if data.key? :goods_code
          root << build_element('stk:description', data[:description], data[:description_attributes]) if data.key? :description
          root << build_element('stk:statistic', data[:statistic], data[:statistic_attributes]) if data.key? :statistic
          root << build_element('stk:unit', data[:unit], data[:unit_attributes]) if data.key? :unit
          root << build_element('stk:coefficient', data[:coefficient], data[:coefficient_attributes]) if data.key? :coefficient
          root << build_element('stk:country', data[:country], data[:country_attributes]) if data.key? :country

          root
        end
      end
    end
  end
end