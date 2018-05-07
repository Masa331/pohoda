module Pohoda
  module Builders
    module Stk
      class InstrastatType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('stk:goodsCode', data[:goods_code]) if data.key? :goods_code
          root << build_element('stk:description', data[:description]) if data.key? :description
          root << build_element('stk:statistic', data[:statistic]) if data.key? :statistic
          root << build_element('stk:unit', data[:unit]) if data.key? :unit
          root << build_element('stk:coefficient', data[:coefficient]) if data.key? :coefficient
          root << build_element('stk:country', data[:country]) if data.key? :country

          root
        end
      end
    end
  end
end