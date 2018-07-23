module Pohoda
  module Builders
    module Rdc
      class ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :import_details
            element = Ox::Element.new('rdc:importDetails')
            data[:import_details].each { |i| element << Rdc::DetailType.new('rdc:detail', i).builder }
            root << element
          end
          if data.key? :parts
            element = Ox::Element.new('rdc:parts')
            data[:parts].map { |i| Ox::Element.new('rdc:part') << i }.each { |i| element << i }
            root << element
          end

          root
        end
      end
    end
  end
end