module Pohoda
  module Builders
    module Acv
      class ActivityType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :activity_header
            root << Acv::ActivityHeaderType.new('acv:activityHeader', data[:activity_header]).builder
          end

          root
        end
      end
    end
  end
end