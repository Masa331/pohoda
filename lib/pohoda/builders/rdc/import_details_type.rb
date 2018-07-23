module Pohoda
  module Builders
    module Rdc
      class ImportDetailsType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :detail
            data[:detail].each { |i| root << Rdc::DetailType.new('rdc:detail', i).builder }
          end

          root
        end
      end
    end
  end
end