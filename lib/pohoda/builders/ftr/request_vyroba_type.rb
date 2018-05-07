module Pohoda
  module Builders
    module Ftr
      class RequestVyrobaType
        include ParserCore::BaseBuilder
        include Ftr::Groups::GroupFilter1

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          mega.each do |r|
            r.nodes.each { |n| root << n }
          end

          root
        end
      end
    end
  end
end