module Pohoda
  module Parsers
    module Prn
      class ReportType
        include ParserCore::BaseParser

        def id
          at 'prn:id'
        end

        def id_attributes
          attributes_at 'prn:id'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'prn:id'
          hash[:id_attributes] = id_attributes if has? 'prn:id'

          hash
        end
      end
    end
  end
end