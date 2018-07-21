module Pohoda
  module Parsers
    module Rdc
      class DetailType
        include ParserCore::BaseParser
        include Rdc::Groups::MyGroupOfValue

        def state
          at 'rdc:state'
        end

        def state_attributes
          attributes_at 'rdc:state'
        end

        def errno
          at 'rdc:errno'
        end

        def errno_attributes
          attributes_at 'rdc:errno'
        end

        def note
          at 'rdc:note'
        end

        def note_attributes
          attributes_at 'rdc:note'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:state] = state if has? 'rdc:state'
          hash[:state_attributes] = state_attributes if has? 'rdc:state'
          hash[:errno] = errno if has? 'rdc:errno'
          hash[:errno_attributes] = errno_attributes if has? 'rdc:errno'
          hash[:note] = note if has? 'rdc:note'
          hash[:note_attributes] = note_attributes if has? 'rdc:note'

          mega.inject(hash) { |memo, r| memo.merge r }
        end
      end
    end
  end
end