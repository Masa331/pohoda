module Pohoda
  module Builders
    module Lst
      class ListRequestAgendasType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :agendas
            element = Ox::Element.new('lst:agendas')
            data[:agendas].each { |i| element << Lst::AgendaType.new('lst:agenda', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end