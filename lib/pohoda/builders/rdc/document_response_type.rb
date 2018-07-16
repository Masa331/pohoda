module Pohoda
  module Builders
    module Rdc
      class DocumentResponseType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :import_details
            element = Ox::Element.new('rdc:importDetails')
            data[:import_details].each { |i| element << Rdc::DetailType.new('rdc:detail', i).builder }
            root << element
          end
          if data.key? :produced_details
            root << Rdc::ProducedDetailsType.new('rdc:producedDetails', data[:produced_details]).builder
          end

          root
        end
      end
    end
  end
end