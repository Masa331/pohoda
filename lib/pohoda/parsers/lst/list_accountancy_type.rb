module Pohoda
  module Parsers
    module Lst
      class ListAccountancyType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def accountancy
          array_of_at(Act::AccountancyType, ['lst:accountancy'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:accountancy] = accountancy.map(&:to_h_with_attrs) if has? 'lst:accountancy'

          hash
          super.merge(hash)
        end
      end
    end
  end
end