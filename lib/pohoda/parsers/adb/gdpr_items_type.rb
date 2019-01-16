module Pohoda
  module Parsers
    module Adb
      class GDPRItemsType
        include ParserCore::BaseParser

        def gdpr_item
          array_of_at(Adb::GDPRItemType, ['adb:GDPRItem'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:gdpr_item] = gdpr_item.map(&:to_h) if has? 'adb:GDPRItem'

          hash
        end
      end
    end
  end
end