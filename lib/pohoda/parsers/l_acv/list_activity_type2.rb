module Pohoda
  module Parsers
    module LAcv
      class ListActivityType2 < Rdc::ListVersionType
        include ParserCore::BaseParser

        def activity
          array_of_at(Acv::ActivityType, ['lAcv:activity'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:activity] = activity.map(&:to_h) if has? 'lAcv:activity'

          hash
          super.merge(hash)
        end
      end
    end
  end
end