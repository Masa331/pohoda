module Pohoda
  module Parsers
    module Pro
      class ProdejkaType
        include ParserCore::BaseParser

        def prodejka_header
          submodel_at(Pro::ProdejkaHeaderType, 'pro:prodejkaHeader')
        end

        def prodejka_detail
          submodel_at(Pro::ProdejkaDetailType, 'pro:prodejkaDetail')
        end

        def prodejka_summary
          submodel_at(Pro::ProdejkaSummaryType, 'pro:prodejkaSummary')
        end

        def eet
          submodel_at(Typ::EETType, 'pro:EET')
        end

        def print
          submodel_at(Prn::AgendaPrintType, 'pro:print')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:prodejka_header] = prodejka_header.to_h_with_attrs if has? 'pro:prodejkaHeader'
          hash[:prodejka_detail] = prodejka_detail.to_h_with_attrs if has? 'pro:prodejkaDetail'
          hash[:prodejka_summary] = prodejka_summary.to_h_with_attrs if has? 'pro:prodejkaSummary'
          hash[:eet] = eet.to_h_with_attrs if has? 'pro:EET'
          hash[:print] = print.to_h_with_attrs if has? 'pro:print'

          hash
        end
      end
    end
  end
end