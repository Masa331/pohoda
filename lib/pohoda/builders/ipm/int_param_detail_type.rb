module Pohoda
  module Builders
    module Ipm
      class IntParamDetailType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :int_param
            root << Ipm::IntParamType.new('ipm:intParam', data[:int_param]).builder
          end

          root
        end
      end
    end
  end
end