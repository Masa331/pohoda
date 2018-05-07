module Pohoda
  module Builders
    module Rdc
      class DetailType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('rdc:state', data[:state]) if data.key? :state
          root << build_element('rdc:errno', data[:errno]) if data.key? :errno
          root << build_element('rdc:note', data[:note]) if data.key? :note

          root
        end
      end
    end
  end
end