module Pohoda
  module Parsers
    module Vyd
      class VydejkaType
        include ParserCore::BaseParser

        def vydejka_header
          submodel_at(Vyd::VydejkaHeaderType, 'vyd:vydejkaHeader')
        end

        def vydejka_detail
          array_of_at(Vyd::VydejkaItemType, ['vyd:vydejkaDetail', 'vyd:vydejkaItem'])
        end

        def vydejka_summary
          submodel_at(Vyd::VydejkaSummaryType, 'vyd:vydejkaSummary')
        end

        def print
          array_of_at(Prn::PrinterSettingsType, ['vyd:print', 'prn:printerSettings'])
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:vydejka_header] = vydejka_header.to_h_with_attrs if has? 'vyd:vydejkaHeader'
          hash[:vydejka_detail] = vydejka_detail.map(&:to_h_with_attrs) if has? 'vyd:vydejkaDetail'
          hash[:vydejka_summary] = vydejka_summary.to_h_with_attrs if has? 'vyd:vydejkaSummary'
          hash[:print] = print.map(&:to_h_with_attrs) if has? 'vyd:print'

          hash
        end
      end
    end
  end
end