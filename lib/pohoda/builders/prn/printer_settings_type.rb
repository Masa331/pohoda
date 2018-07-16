module Pohoda
  module Builders
    module Prn
      class PrinterSettingsType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :report
            root << Prn::ReportType.new('prn:report', data[:report]).builder
          end
          root << build_element('prn:printer', data[:printer], data[:printer_attributes]) if data.key? :printer
          if data.key? :pdf
            root << Prn::PDFType.new('prn:pdf', data[:pdf]).builder
          end
          root << build_element('prn:parameters', data[:parameters], data[:parameters_attributes]) if data.key? :parameters

          root
        end
      end
    end
  end
end