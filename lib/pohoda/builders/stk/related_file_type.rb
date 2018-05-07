module Pohoda
  module Builders
    module Stk
      class RelatedFileType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('stk:filepath', data[:filepath]) if data.key? :filepath
          root << build_element('stk:description', data[:description]) if data.key? :description

          root
        end
      end
    end
  end
end