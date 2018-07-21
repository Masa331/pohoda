module Pohoda
  module Builders
    module Ftr
      class RequestGroupStocksType
        include ParserCore::BaseBuilder
        include Ftr::Groups::GroupFilter3

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