module Pohoda
  module Parsers
    module Prm
      class ParameterItemListType
        include ParserCore::BaseParser

        def parameter_def
          array_of_at(Prm::ParameterDefType, ['prm:parameterDef'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:parameter_def] = parameter_def.map(&:to_h) if has? 'prm:parameterDef'

          hash
        end
      end
    end
  end
end