module Pohoda
  module Builders
    module LAcv
      class ListActivityType2 < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          super.nodes.each do |n|
            root << n
          end

          if data.key? :activity
            data[:activity].each { |i| root << Acv::ActivityType.new('lAcv:activity', i).builder }
          end

          root
        end
      end
    end
  end
end