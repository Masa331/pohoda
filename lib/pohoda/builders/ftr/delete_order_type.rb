module Pohoda
  module Builders
    module Ftr
      class DeleteOrderType
        include ParserCore::BaseBuilder
        include Ftr::Groups::DeleteFilter

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
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