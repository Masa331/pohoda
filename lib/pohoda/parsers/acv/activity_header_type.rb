module Pohoda
  module Parsers
    module Acv
      class ActivityHeaderType
        include ParserCore::BaseParser

        def id
          at 'acv:id'
        end

        def id_attributes
          attributes_at 'acv:id'
        end

        def ext_id
          submodel_at(Typ::ExtIdType, 'acv:extId')
        end

        def code
          at 'acv:code'
        end

        def code_attributes
          attributes_at 'acv:code'
        end

        def name
          at 'acv:name'
        end

        def name_attributes
          attributes_at 'acv:name'
        end

        def establishment
          submodel_at(Typ::RefType, 'acv:establishment')
        end

        def note
          at 'acv:note'
        end

        def note_attributes
          attributes_at 'acv:note'
        end

        def mark_record
          at 'acv:markRecord'
        end

        def mark_record_attributes
          attributes_at 'acv:markRecord'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'acv:id'
          hash[:id_attributes] = id_attributes if has? 'acv:id'
          hash[:ext_id] = ext_id.to_h if has? 'acv:extId'
          hash[:code] = code if has? 'acv:code'
          hash[:code_attributes] = code_attributes if has? 'acv:code'
          hash[:name] = name if has? 'acv:name'
          hash[:name_attributes] = name_attributes if has? 'acv:name'
          hash[:establishment] = establishment.to_h if has? 'acv:establishment'
          hash[:note] = note if has? 'acv:note'
          hash[:note_attributes] = note_attributes if has? 'acv:note'
          hash[:mark_record] = mark_record if has? 'acv:markRecord'
          hash[:mark_record_attributes] = mark_record_attributes if has? 'acv:markRecord'

          hash
        end
      end
    end
  end
end