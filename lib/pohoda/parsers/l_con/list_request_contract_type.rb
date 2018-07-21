module Pohoda
  module Parsers
    module LCon
      class ListRequestContractType
        include ParserCore::BaseParser

        def request_contract
          submodel_at(Ftr::RequestContractType, 'lCon:requestContract')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:request_contract] = request_contract.to_h if has? 'lCon:requestContract'

          hash
        end
      end
    end
  end
end