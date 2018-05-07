module Pohoda
  module Parsers
    module Pri
      class PrijemkaType
        include ParserCore::BaseParser

        def prijemka_header
          submodel_at(Pri::PrijemkaHeaderType, 'pri:prijemkaHeader')
        end

        def prijemka_detail
          submodel_at(Pri::PrijemkaDetailType, 'pri:prijemkaDetail')
        end

        def prijemka_summary
          submodel_at(Pri::PrijemkaSummaryType, 'pri:prijemkaSummary')
        end

        def print
          submodel_at(Prn::AgendaPrintType, 'pri:print')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:prijemka_header] = prijemka_header.to_h_with_attrs if has? 'pri:prijemkaHeader'
          hash[:prijemka_detail] = prijemka_detail.to_h_with_attrs if has? 'pri:prijemkaDetail'
          hash[:prijemka_summary] = prijemka_summary.to_h_with_attrs if has? 'pri:prijemkaSummary'
          hash[:print] = print.to_h_with_attrs if has? 'pri:print'

          hash
        end
      end
    end
  end
end