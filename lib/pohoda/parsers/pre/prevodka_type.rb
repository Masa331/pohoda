module Pohoda
  module Parsers
    module Pre
      class PrevodkaType
        include ParserCore::BaseParser

        def prevodka_header
          submodel_at(Pre::PrevodkaHeaderType, 'pre:prevodkaHeader')
        end

        def prevodka_detail
          array_of_at(Pre::PrevodkaItemType, ['pre:prevodkaDetail', 'pre:prevodkaItem'])
        end

        def print
          array_of_at(Prn::PrinterSettingsType, ['pre:print', 'prn:printerSettings'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:prevodka_header] = prevodka_header.to_h if has? 'pre:prevodkaHeader'
          hash[:prevodka_detail] = prevodka_detail.map(&:to_h) if has? 'pre:prevodkaDetail'
          hash[:print] = print.map(&:to_h) if has? 'pre:print'

          hash
        end
      end
    end
  end
end