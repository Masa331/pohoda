module Pohoda
  module Parsers
    module Lst
      class ListVyrobaType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def vyroba
          array_of_at(Vyr::VyrobaType, ['lst:vyroba'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:vyroba] = vyroba.map(&:to_h_with_attrs) if has? 'lst:vyroba'

          hash
          super.merge(hash)
        end
      end
    end
  end
end