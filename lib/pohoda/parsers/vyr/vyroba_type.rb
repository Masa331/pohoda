module Pohoda
  module Parsers
    module Vyr
      class VyrobaType
        include ParserCore::BaseParser

        def vyroba_header
          submodel_at(Vyr::VyrobaHeaderType, 'vyr:vyrobaHeader')
        end

        def vyroba_detail
          array_of_at(Vyr::VyrobaItemType, ['vyr:vyrobaDetail', 'vyr:vyrobaItem'])
        end

        def print
          array_of_at(Prn::PrinterSettingsType, ['vyr:print', 'prn:printerSettings'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:vyroba_header] = vyroba_header.to_h if has? 'vyr:vyrobaHeader'
          hash[:vyroba_detail] = vyroba_detail.map(&:to_h) if has? 'vyr:vyrobaDetail'
          hash[:print] = print.map(&:to_h) if has? 'vyr:print'

          hash
        end
      end
    end
  end
end