module Pohoda
  module Parsers
    module Vyr
      class VyrobaType
        include ParserCore::BaseParser

        def vyroba_header
          submodel_at(Vyr::VyrobaHeaderType, 'vyr:vyrobaHeader')
        end

        def vyroba_detail
          submodel_at(Vyr::VyrobaDetailType, 'vyr:vyrobaDetail')
        end

        def print
          submodel_at(Prn::AgendaPrintType, 'vyr:print')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:vyroba_header] = vyroba_header.to_h_with_attrs if has? 'vyr:vyrobaHeader'
          hash[:vyroba_detail] = vyroba_detail.to_h_with_attrs if has? 'vyr:vyrobaDetail'
          hash[:print] = print.to_h_with_attrs if has? 'vyr:print'

          hash
        end
      end
    end
  end
end