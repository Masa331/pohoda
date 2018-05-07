module Pohoda
  module Parsers
    module Ftr
      class FilterNumeciralSeriesType
        include ParserCore::BaseParser

        def id
          at 'ftr:id'
        end

        def period
          at 'ftr:period'
        end

        def agenda
          at 'ftr:agenda'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'ftr:id'
          hash[:period] = period if has? 'ftr:period'
          hash[:agenda] = agenda if has? 'ftr:agenda'

          hash
        end
      end
    end
  end
end