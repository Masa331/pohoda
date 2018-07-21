module Pohoda
  module Builders
    module Stk
      class RelatedFileType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          root << build_element('stk:filepath', data[:filepath], data[:filepath_attributes]) if data.key? :filepath
          root << build_element('stk:description', data[:description], data[:description_attributes]) if data.key? :description

          root
        end
      end
    end
  end
end