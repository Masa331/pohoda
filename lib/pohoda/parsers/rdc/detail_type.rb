module Pohoda
  module Parsers
    module Rdc
      class DetailType
        include ParserCore::BaseParser
        include Rdc::Groups::MyGroupOfValue

        def state
          at 'rdc:state'
        end

        def errno
          at 'rdc:errno'
        end

        def note
          at 'rdc:note'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:state] = state if has? 'rdc:state'
          hash[:errno] = errno if has? 'rdc:errno'
          hash[:note] = note if has? 'rdc:note'

          mega.inject(hash) { |memo, r| memo.merge r }
        end
      end
    end
  end
end