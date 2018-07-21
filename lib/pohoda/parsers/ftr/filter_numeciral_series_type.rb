module Pohoda
  module Parsers
    module Ftr
      class FilterNumeciralSeriesType
        include ParserCore::BaseParser

        def id
          at 'ftr:id'
        end

        def id_attributes
          attributes_at 'ftr:id'
        end

        def period
          at 'ftr:period'
        end

        def period_attributes
          attributes_at 'ftr:period'
        end

        def agenda
          at 'ftr:agenda'
        end

        def agenda_attributes
          attributes_at 'ftr:agenda'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'ftr:id'
          hash[:id_attributes] = id_attributes if has? 'ftr:id'
          hash[:period] = period if has? 'ftr:period'
          hash[:period_attributes] = period_attributes if has? 'ftr:period'
          hash[:agenda] = agenda if has? 'ftr:agenda'
          hash[:agenda_attributes] = agenda_attributes if has? 'ftr:agenda'

          hash
        end
      end
    end
  end
end