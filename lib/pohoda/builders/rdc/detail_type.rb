module Pohoda
  module Builders
    module Rdc
      class DetailType
        include ParserCore::BaseBuilder
        include Rdc::Groups::MyGroupOfValue

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('rdc:state', data[:state], data[:state_attributes]) if data.key? :state
          root << build_element('rdc:errno', data[:errno], data[:errno_attributes]) if data.key? :errno
          root << build_element('rdc:note', data[:note], data[:note_attributes]) if data.key? :note

          mega.each do |r|
            r.nodes.each { |n| root << n }
          end

          root
        end
      end
    end
  end
end