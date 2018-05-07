module Pohoda
  module Parsers
    module Pre
      class PrevodkaType
        include ParserCore::BaseParser

        def prevodka_header
          submodel_at(Pre::PrevodkaHeaderType, 'pre:prevodkaHeader')
        end

        def prevodka_detail
          submodel_at(Pre::PrevodkaDetailType, 'pre:prevodkaDetail')
        end

        def print
          submodel_at(Prn::AgendaPrintType, 'pre:print')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:prevodka_header] = prevodka_header.to_h_with_attrs if has? 'pre:prevodkaHeader'
          hash[:prevodka_detail] = prevodka_detail.to_h_with_attrs if has? 'pre:prevodkaDetail'
          hash[:print] = print.to_h_with_attrs if has? 'pre:print'

          hash
        end
      end
    end
  end
end