module Pohoda
  module Parsers
    module Lst
      class ListContractType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def item_contract
          at 'lst:itemContract'
        end

        def item_contract_attributes
          attributes_at 'lst:itemContract'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:item_contract] = item_contract if has? 'lst:itemContract'
          hash[:item_contract_attributes] = item_contract_attributes if has? 'lst:itemContract'

          hash
          super.merge(hash)
        end
      end
    end
  end
end