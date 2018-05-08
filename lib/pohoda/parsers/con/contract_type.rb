module Pohoda
  module Parsers
    module Con
      class ContractType
        include ParserCore::BaseParser

        def contract_desc
          submodel_at(Con::ContractDescType, 'con:contractDesc')
        end

        def print
          array_of_at(Prn::PrinterSettingsType, ['con:print', 'prn:printerSettings'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:contract_desc] = contract_desc.to_h_with_attrs if has? 'con:contractDesc'
          hash[:print] = print.map(&:to_h_with_attrs) if has? 'con:print'

          hash
        end
      end
    end
  end
end