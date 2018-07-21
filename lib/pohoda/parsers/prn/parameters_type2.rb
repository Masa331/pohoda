module Pohoda
  module Parsers
    module Prn
      class ParametersType2
        include ParserCore::BaseParser

        def copy
          at 'prn:copy'
        end

        def copy_attributes
          attributes_at 'prn:copy'
        end

        def date_print
          at 'prn:datePrint'
        end

        def date_print_attributes
          attributes_at 'prn:datePrint'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:copy] = copy if has? 'prn:copy'
          hash[:copy_attributes] = copy_attributes if has? 'prn:copy'
          hash[:date_print] = date_print if has? 'prn:datePrint'
          hash[:date_print_attributes] = date_print_attributes if has? 'prn:datePrint'

          hash
        end
      end
    end
  end
end