module Pohoda
  module Parsers
    module Prm
      class FormItemListType
        include ParserCore::BaseParser

        def ctrl_def
          array_of_at(Prm::CtrlDefType, ['prm:ctrlDef'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:ctrl_def] = ctrl_def.map(&:to_h) if has? 'prm:ctrlDef'

          hash
        end
      end
    end
  end
end