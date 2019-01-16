module Pohoda
  module Parsers
    module LCen
      class ListRequestCentreType
        include ParserCore::BaseParser

        def request_centre
          at 'lCen:requestCentre'
        end

        def request_centre_attributes
          attributes_at 'lCen:requestCentre'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:request_centre] = request_centre if has? 'lCen:requestCentre'
          hash[:request_centre_attributes] = request_centre_attributes if has? 'lCen:requestCentre'

          hash
        end
      end
    end
  end
end