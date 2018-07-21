module Pohoda
  module Parsers
    module Lst
      class ListAccountancyType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def accountancy
          array_of_at(Act::AccountancyType, ['lst:accountancy'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:accountancy] = accountancy.map(&:to_h) if has? 'lst:accountancy'

          hash
          super.merge(hash)
        end
      end
    end
  end
end