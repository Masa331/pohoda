module Pohoda
  module Parsers
    module LCon
      class ListContractType2 < Rdc::ListVersionType
        include ParserCore::BaseParser

        def contract
          array_of_at(Con::ContractType, ['lCon:contract'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:contract] = contract.map(&:to_h) if has? 'lCon:contract'

          hash
          super.merge(hash)
        end
      end
    end
  end
end