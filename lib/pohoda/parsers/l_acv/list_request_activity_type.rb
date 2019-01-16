module Pohoda
  module Parsers
    module LAcv
      class ListRequestActivityType
        include ParserCore::BaseParser

        def request_activity
          at 'lAcv:requestActivity'
        end

        def request_activity_attributes
          attributes_at 'lAcv:requestActivity'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:request_activity] = request_activity if has? 'lAcv:requestActivity'
          hash[:request_activity_attributes] = request_activity_attributes if has? 'lAcv:requestActivity'

          hash
        end
      end
    end
  end
end