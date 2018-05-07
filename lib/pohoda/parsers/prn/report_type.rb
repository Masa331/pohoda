module Pohoda
  module Parsers
    module Prn
      class ReportType
        include ParserCore::BaseParser

        def id
          at 'prn:id'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'prn:id'

          hash
        end
      end
    end
  end
end