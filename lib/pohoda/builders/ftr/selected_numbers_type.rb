module Pohoda
  module Builders
    module Ftr
      class SelectedNumbersType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :number
            data[:number].each { |i| root << Typ::NumberType.new('ftr:number', i).builder }
          end

          root
        end
      end
    end
  end
end