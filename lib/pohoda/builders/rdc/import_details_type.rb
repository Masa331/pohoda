module Pohoda
  module Builders
    module Rdc
      class ImportDetailsType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :detail
            data[:detail].each { |i| root << Rdc::DetailType.new('rdc:detail', i).builder }
          end

          root
        end
      end
    end
  end
end