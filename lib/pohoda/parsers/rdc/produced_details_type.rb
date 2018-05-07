module Pohoda
  module Parsers
    module Rdc
      class ProducedDetailsType
        include ParserCore::BaseParser

        def id
          at 'rdc:id'
        end

        def number
          at 'rdc:number'
        end

        def code
          at 'rdc:code'
        end

        def action_type
          at 'rdc:actionType'
        end

        def ext_id
          submodel_at(Typ::ExtIdType, 'rdc:extId')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'rdc:id'
          hash[:number] = number if has? 'rdc:number'
          hash[:code] = code if has? 'rdc:code'
          hash[:action_type] = action_type if has? 'rdc:actionType'
          hash[:ext_id] = ext_id.to_h_with_attrs if has? 'rdc:extId'

          hash
        end
      end
    end
  end
end