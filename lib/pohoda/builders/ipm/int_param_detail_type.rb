module Pohoda
  module Builders
    module Ipm
      class IntParamDetailType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :int_param
            root << Ipm::IntParamType.new('intParam', data[:int_param]).builder
          end

          root
        end
      end
    end
  end
end