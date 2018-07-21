module Pohoda
  module Parsers
    module Prm
      class ParameterDefType
        include ParserCore::BaseParser

        def id
          at 'prm:id'
        end

        def id_attributes
          attributes_at 'prm:id'
        end

        def label
          at 'prm:label'
        end

        def label_attributes
          attributes_at 'prm:label'
        end

        def name
          at 'prm:name'
        end

        def name_attributes
          attributes_at 'prm:name'
        end

        def type
          at 'prm:type'
        end

        def type_attributes
          attributes_at 'prm:type'
        end

        def length
          at 'prm:length'
        end

        def length_attributes
          attributes_at 'prm:length'
        end

        def definition
          at 'prm:definition'
        end

        def definition_attributes
          attributes_at 'prm:definition'
        end

        def list
          submodel_at(Typ::RefType, 'prm:list')
        end

        def use0
          at 'prm:use0'
        end

        def use0_attributes
          attributes_at 'prm:use0'
        end

        def use1
          at 'prm:use1'
        end

        def use1_attributes
          attributes_at 'prm:use1'
        end

        def use2
          at 'prm:use2'
        end

        def use2_attributes
          attributes_at 'prm:use2'
        end

        def use3
          at 'prm:use3'
        end

        def use3_attributes
          attributes_at 'prm:use3'
        end

        def use4
          at 'prm:use4'
        end

        def use4_attributes
          attributes_at 'prm:use4'
        end

        def use5
          at 'prm:use5'
        end

        def use5_attributes
          attributes_at 'prm:use5'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'prm:id'
          hash[:id_attributes] = id_attributes if has? 'prm:id'
          hash[:label] = label if has? 'prm:label'
          hash[:label_attributes] = label_attributes if has? 'prm:label'
          hash[:name] = name if has? 'prm:name'
          hash[:name_attributes] = name_attributes if has? 'prm:name'
          hash[:type] = type if has? 'prm:type'
          hash[:type_attributes] = type_attributes if has? 'prm:type'
          hash[:length] = length if has? 'prm:length'
          hash[:length_attributes] = length_attributes if has? 'prm:length'
          hash[:definition] = definition if has? 'prm:definition'
          hash[:definition_attributes] = definition_attributes if has? 'prm:definition'
          hash[:list] = list.to_h if has? 'prm:list'
          hash[:use0] = use0 if has? 'prm:use0'
          hash[:use0_attributes] = use0_attributes if has? 'prm:use0'
          hash[:use1] = use1 if has? 'prm:use1'
          hash[:use1_attributes] = use1_attributes if has? 'prm:use1'
          hash[:use2] = use2 if has? 'prm:use2'
          hash[:use2_attributes] = use2_attributes if has? 'prm:use2'
          hash[:use3] = use3 if has? 'prm:use3'
          hash[:use3_attributes] = use3_attributes if has? 'prm:use3'
          hash[:use4] = use4 if has? 'prm:use4'
          hash[:use4_attributes] = use4_attributes if has? 'prm:use4'
          hash[:use5] = use5 if has? 'prm:use5'
          hash[:use5_attributes] = use5_attributes if has? 'prm:use5'

          hash
        end
      end
    end
  end
end