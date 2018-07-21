module Pohoda
  module Builders
    module Ftr
      class SelectedNumbersType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          if data.key? :number
            data[:number].each { |i| root << Typ::NumberType.new('ftr:number', i).builder }
          end

          root
        end
      end
    end
  end
end