module Pohoda
  module Parsers
    module Acv
      class ActivityType
        include ParserCore::BaseParser

        def activity_header
          submodel_at(Acv::ActivityHeaderType, 'acv:activityHeader')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:activity_header] = activity_header.to_h if has? 'acv:activityHeader'

          hash
        end
      end
    end
  end
end