module Pohoda
  module Builders
    module Prn
      class PrintType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          if data.key? :record
            root << Ftr::RecordPrintType.new('prn:record', data[:record]).builder
          end
          if data.key? :printer_settings
            data[:printer_settings].each { |i| root << Prn::PrinterSettingsType.new('prn:printerSettings', i).builder }
          end

          root
        end
      end
    end
  end
end