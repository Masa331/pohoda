module Pohoda
  module Parsers
    module Lst
      class ListVydejkaType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def vydejka
          array_of_at(Vyd::VydejkaType, ['lst:vydejka'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:vydejka] = vydejka.map(&:to_h_with_attrs) if has? 'lst:vydejka'

          hash
          super.merge(hash)
        end
      end
    end
  end
end