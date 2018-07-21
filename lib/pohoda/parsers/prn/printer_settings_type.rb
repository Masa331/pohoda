module Pohoda
  module Parsers
    module Prn
      class PrinterSettingsType
        include ParserCore::BaseParser

        def report
          submodel_at(Prn::ReportType, 'prn:report')
        end

        def printer
          at 'prn:printer'
        end

        def printer_attributes
          attributes_at 'prn:printer'
        end

        def pdf
          submodel_at(Prn::PDFType, 'prn:pdf')
        end

        def parameters
          at 'prn:parameters'
        end

        def parameters_attributes
          attributes_at 'prn:parameters'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:report] = report.to_h if has? 'prn:report'
          hash[:printer] = printer if has? 'prn:printer'
          hash[:printer_attributes] = printer_attributes if has? 'prn:printer'
          hash[:pdf] = pdf.to_h if has? 'prn:pdf'
          hash[:parameters] = parameters if has? 'prn:parameters'
          hash[:parameters_attributes] = parameters_attributes if has? 'prn:parameters'

          hash
        end
      end
    end
  end
end