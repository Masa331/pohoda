module Pohoda
  module Builders
    module LCon
      class ListContractType2 < Rdc::ListVersionType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          super.nodes.each do |n|
            root << n
          end

          if data.key? :contract
            data[:contract].each { |i| root << Con::ContractType.new('lCon:contract', i).builder }
          end

          root
        end
      end
    end
  end
end