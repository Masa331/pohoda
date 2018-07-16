module Pohoda
  module Builders
    module Stk
      class RelatedFileType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('stk:filepath', data[:filepath], data[:filepath_attributes]) if data.key? :filepath
          root << build_element('stk:description', data[:description], data[:description_attributes]) if data.key? :description

          root
        end
      end
    end
  end
end