module Pohoda
  module Builders
    module Prn
      class AgendaPrintType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :printer_settings
            data[:printer_settings].each { |i| root << Prn::PrinterSettingsType.new('prn:printerSettings', i).builder }
          end

          root
        end
      end
    end
  end
end