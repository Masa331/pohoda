module Pohoda
  module Parsers
    module Cen
      class CentreHeaderType
        include ParserCore::BaseParser

        def id
          at 'cen:id'
        end

        def id_attributes
          attributes_at 'cen:id'
        end

        def ext_id
          submodel_at(Typ::ExtIdType, 'cen:extId')
        end

        def code
          at 'cen:code'
        end

        def code_attributes
          attributes_at 'cen:code'
        end

        def name
          at 'cen:name'
        end

        def name_attributes
          attributes_at 'cen:name'
        end

        def establishment
          submodel_at(Typ::RefType, 'cen:establishment')
        end

        def note
          at 'cen:note'
        end

        def note_attributes
          attributes_at 'cen:note'
        end

        def mark_record
          at 'cen:markRecord'
        end

        def mark_record_attributes
          attributes_at 'cen:markRecord'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'cen:id'
          hash[:id_attributes] = id_attributes if has? 'cen:id'
          hash[:ext_id] = ext_id.to_h if has? 'cen:extId'
          hash[:code] = code if has? 'cen:code'
          hash[:code_attributes] = code_attributes if has? 'cen:code'
          hash[:name] = name if has? 'cen:name'
          hash[:name_attributes] = name_attributes if has? 'cen:name'
          hash[:establishment] = establishment.to_h if has? 'cen:establishment'
          hash[:note] = note if has? 'cen:note'
          hash[:note_attributes] = note_attributes if has? 'cen:note'
          hash[:mark_record] = mark_record if has? 'cen:markRecord'
          hash[:mark_record_attributes] = mark_record_attributes if has? 'cen:markRecord'

          hash
        end
      end
    end
  end
end