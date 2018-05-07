module Pohoda
  module Builders
    module Lst
      class ListRequestAgendasType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

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