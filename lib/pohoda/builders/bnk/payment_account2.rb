module Pohoda
  module Builders
    module Bnk
      class PaymentAccount2
        include ParserCore::BaseBuilder
        include Typ::Groups::MyGroupOfAccount

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