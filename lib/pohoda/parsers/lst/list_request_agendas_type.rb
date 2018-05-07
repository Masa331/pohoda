module Pohoda
  module Parsers
    module Lst
      class ListRequestAgendasType
        include ParserCore::BaseParser

        def agendas
          array_of_at(Lst::AgendaType, ['lst:agendas', 'lst:agenda'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:agendas] = agendas.map(&:to_h_with_attrs) if has? 'lst:agendas'

          hash
        end
      end
    end
  end
end