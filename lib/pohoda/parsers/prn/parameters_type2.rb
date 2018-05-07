module Pohoda
  module Parsers
    module Prn
      class ParametersType2
        include ParserCore::BaseParser

        def copy
          at 'prn:copy'
        end

        def date_print
          at 'prn:datePrint'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:copy] = copy if has? 'prn:copy'
          hash[:date_print] = date_print if has? 'prn:datePrint'

          hash
        end
      end
    end
  end
end