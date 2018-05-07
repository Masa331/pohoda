module Pohoda
  module Parsers
    module Prm
      class ParameterDefType
        include ParserCore::BaseParser

        def id
          at 'prm:id'
        end

        def label
          at 'prm:label'
        end

        def name
          at 'prm:name'
        end

        def type
          at 'prm:type'
        end

        def length
          at 'prm:length'
        end

        def definition
          at 'prm:definition'
        end

        def list
          submodel_at(Typ::RefType, 'prm:list')
        end

        def use0
          at 'prm:use0'
        end

        def use1
          at 'prm:use1'
        end

        def use2
          at 'prm:use2'
        end

        def use3
          at 'prm:use3'
        end

        def use4
          at 'prm:use4'
        end

        def use5
          at 'prm:use5'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'prm:id'
          hash[:label] = label if has? 'prm:label'
          hash[:name] = name if has? 'prm:name'
          hash[:type] = type if has? 'prm:type'
          hash[:length] = length if has? 'prm:length'
          hash[:definition] = definition if has? 'prm:definition'
          hash[:list] = list.to_h_with_attrs if has? 'prm:list'
          hash[:use0] = use0 if has? 'prm:use0'
          hash[:use1] = use1 if has? 'prm:use1'
          hash[:use2] = use2 if has? 'prm:use2'
          hash[:use3] = use3 if has? 'prm:use3'
          hash[:use4] = use4 if has? 'prm:use4'
          hash[:use5] = use5 if has? 'prm:use5'

          hash
        end
      end
    end
  end
end