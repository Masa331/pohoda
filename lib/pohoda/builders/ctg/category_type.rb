module Pohoda
  module Builders
    module Ctg
      class CategoryType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('ctg:parentId', data[:parent_id]) if data.key? :parent_id
          root << build_element('ctg:id', data[:id]) if data.key? :id
          root << build_element('ctg:name', data[:name]) if data.key? :name
          root << build_element('ctg:description', data[:description]) if data.key? :description
          root << build_element('ctg:sequence', data[:sequence]) if data.key? :sequence
          root << build_element('ctg:displayed', data[:displayed]) if data.key? :displayed
          root << build_element('ctg:picture', data[:picture]) if data.key? :picture
          root << build_element('ctg:note', data[:note]) if data.key? :note
          root << build_element('ctg:markRecord', data[:mark_record]) if data.key? :mark_record
          if data.key? :sub_categories
            element = Ox::Element.new('ctg:subCategories')
            data[:sub_categories].each { |i| element << Ctg::CategoryType.new('ctg:category', i).builder }
            root << element
          end
          if data.key? :internet_params
            root << Ctg::InternetParamsType.new('ctg:internetParams', data[:internet_params]).builder
          end

          root
        end
      end
    end
  end
end