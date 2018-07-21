module Pohoda
  module Builders
    module Prm
      class FormItemListType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          if data.key? :ctrl_def
            data[:ctrl_def].each { |i| root << Prm::CtrlDefType.new('prm:ctrlDef', i).builder }
          end

          root
        end
      end
    end
  end
end