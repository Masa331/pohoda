module Pohoda
  module Builders
    module Lst
      class ListCategoryRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          root << build_element('lst:requestCategory', data[:request_category], data[:request_category_attributes]) if data.key? :request_category

          root
        end
      end
    end
  end
end