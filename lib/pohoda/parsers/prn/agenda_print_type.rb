module Pohoda
  module Parsers
    module Prn
      class AgendaPrintType
        include ParserCore::BaseParser

        def printer_settings
          array_of_at(Prn::PrinterSettingsType, ['prn:printerSettings'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:printer_settings] = printer_settings.map(&:to_h_with_attrs) if has? 'prn:printerSettings'

          hash
        end
      end
    end
  end
end