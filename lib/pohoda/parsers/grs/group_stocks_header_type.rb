module Pohoda
  module Parsers
    module Grs
      class GroupStocksHeaderType
        include ParserCore::BaseParser

        def id
          at 'grs:id'
        end

        def id_attributes
          attributes_at 'grs:id'
        end

        def code
          at 'grs:code'
        end

        def code_attributes
          attributes_at 'grs:code'
        end

        def name
          at 'grs:name'
        end

        def name_attributes
          attributes_at 'grs:name'
        end

        def description
          at 'grs:description'
        end

        def description_attributes
          attributes_at 'grs:description'
        end

        def internet
          at 'grs:internet'
        end

        def internet_attributes
          attributes_at 'grs:internet'
        end

        def picture
          at 'grs:picture'
        end

        def picture_attributes
          attributes_at 'grs:picture'
        end

        def note
          at 'grs:note'
        end

        def note_attributes
          attributes_at 'grs:note'
        end

        def mark_record
          at 'grs:markRecord'
        end

        def mark_record_attributes
          attributes_at 'grs:markRecord'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'grs:id'
          hash[:id_attributes] = id_attributes if has? 'grs:id'
          hash[:code] = code if has? 'grs:code'
          hash[:code_attributes] = code_attributes if has? 'grs:code'
          hash[:name] = name if has? 'grs:name'
          hash[:name_attributes] = name_attributes if has? 'grs:name'
          hash[:description] = description if has? 'grs:description'
          hash[:description_attributes] = description_attributes if has? 'grs:description'
          hash[:internet] = internet if has? 'grs:internet'
          hash[:internet_attributes] = internet_attributes if has? 'grs:internet'
          hash[:picture] = picture if has? 'grs:picture'
          hash[:picture_attributes] = picture_attributes if has? 'grs:picture'
          hash[:note] = note if has? 'grs:note'
          hash[:note_attributes] = note_attributes if has? 'grs:note'
          hash[:mark_record] = mark_record if has? 'grs:markRecord'
          hash[:mark_record_attributes] = mark_record_attributes if has? 'grs:markRecord'

          hash
        end
      end
    end
  end
end