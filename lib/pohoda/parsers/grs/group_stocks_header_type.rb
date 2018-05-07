module Pohoda
  module Parsers
    module Grs
      class GroupStocksHeaderType
        include ParserCore::BaseParser

        def id
          at 'grs:id'
        end

        def code
          at 'grs:code'
        end

        def name
          at 'grs:name'
        end

        def description
          at 'grs:description'
        end

        def internet
          at 'grs:internet'
        end

        def picture
          at 'grs:picture'
        end

        def note
          at 'grs:note'
        end

        def mark_record
          at 'grs:markRecord'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'grs:id'
          hash[:code] = code if has? 'grs:code'
          hash[:name] = name if has? 'grs:name'
          hash[:description] = description if has? 'grs:description'
          hash[:internet] = internet if has? 'grs:internet'
          hash[:picture] = picture if has? 'grs:picture'
          hash[:note] = note if has? 'grs:note'
          hash[:mark_record] = mark_record if has? 'grs:markRecord'

          hash
        end
      end
    end
  end
end