module Pohoda
  module Builders
    module Rdc
      class PartsType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :part
            data[:part].map { |i| Ox::Element.new('rdc:part') << i }.each { |i| root << i }
          end

          root
        end
      end
    end
  end
end