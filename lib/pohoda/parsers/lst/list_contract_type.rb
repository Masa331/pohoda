module Pohoda
  module Parsers
    module Lst
      class ListContractType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def item_contract
          at 'lst:itemContract'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:item_contract] = item_contract if has? 'lst:itemContract'

          hash
          super.merge(hash)
        end
      end
    end
  end
end