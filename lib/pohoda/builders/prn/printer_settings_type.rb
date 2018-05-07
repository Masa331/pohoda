module Pohoda
  module Builders
    module Prn
      class PrinterSettingsType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :report
            root << Prn::ReportType.new('report', data[:report]).builder
          end
          root << build_element('prn:printer', data[:printer]) if data.key? :printer
          if data.key? :pdf
            root << Prn::PDFType.new('pdf', data[:pdf]).builder
          end
          root << build_element('prn:parameters', data[:parameters]) if data.key? :parameters

          root
        end
      end
    end
  end
end