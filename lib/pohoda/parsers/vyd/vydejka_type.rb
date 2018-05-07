module Pohoda
  module Parsers
    module Vyd
      class VydejkaType
        include ParserCore::BaseParser

        def vydejka_header
          submodel_at(Vyd::VydejkaHeaderType, 'vyd:vydejkaHeader')
        end

        def vydejka_detail
          submodel_at(Vyd::VydejkaDetailType, 'vyd:vydejkaDetail')
        end

        def vydejka_summary
          submodel_at(Vyd::VydejkaSummaryType, 'vyd:vydejkaSummary')
        end

        def print
          submodel_at(Prn::AgendaPrintType, 'vyd:print')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:vydejka_header] = vydejka_header.to_h_with_attrs if has? 'vyd:vydejkaHeader'
          hash[:vydejka_detail] = vydejka_detail.to_h_with_attrs if has? 'vyd:vydejkaDetail'
          hash[:vydejka_summary] = vydejka_summary.to_h_with_attrs if has? 'vyd:vydejkaSummary'
          hash[:print] = print.to_h_with_attrs if has? 'vyd:print'

          hash
        end
      end
    end
  end
end