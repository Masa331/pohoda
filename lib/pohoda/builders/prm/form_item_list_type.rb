module Pohoda
  module Builders
    module Prm
      class FormItemListType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :ctrl_def
            data[:ctrl_def].each { |i| root << Prm::CtrlDefType.new('prm:ctrlDef', i).builder }
          end

          root
        end
      end
    end
  end
end