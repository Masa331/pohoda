module Pohoda
  module Builders
    module Rdc
      class DocumentResponseType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

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