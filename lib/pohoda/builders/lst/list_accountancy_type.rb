module Pohoda
  module Builders
    module Lst
      class ListAccountancyType < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          super.nodes.each do |n|
            root << n
          end

          if data.key? :accountancy
            data[:accountancy].each { |i| root << Act::AccountancyType.new('lst:accountancy', i).builder }
          end

          root
        end
      end
    end
  end
end