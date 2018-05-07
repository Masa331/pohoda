module Pohoda
  module Builders
    module Rdc
      class DocumentResponseType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :import_details
            root << Rdc::ImportDetailsType.new('importDetails', data[:import_details]).builder
          end
          if data.key? :produced_details
            root << Rdc::ProducedDetailsType.new('producedDetails', data[:produced_details]).builder
          end

          root
        end
      end
    end
  end
end