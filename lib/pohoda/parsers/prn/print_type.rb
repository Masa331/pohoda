module Pohoda
  module Parsers
    module Prn
      class PrintType
        include ParserCore::BaseParser

        def record
          submodel_at(Ftr::RecordPrintType, 'prn:record')
        end

        def printer_settings
          array_of_at(Prn::PrinterSettingsType, ['prn:printerSettings'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:record] = record.to_h if has? 'prn:record'
          hash[:printer_settings] = printer_settings.map(&:to_h) if has? 'prn:printerSettings'

          hash
        end
      end
    end
  end
end