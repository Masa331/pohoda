module Pohoda
  module Builders
    module Prn
      class AgendaPrintType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
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