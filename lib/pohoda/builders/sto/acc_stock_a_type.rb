module Pohoda
  module Builders
    module Sto
      class AccStockAType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('sto:material', data[:material]) if data.key? :material
          root << build_element('sto:goods', data[:goods]) if data.key? :goods
          root << build_element('sto:workInProgress', data[:work_in_progress]) if data.key? :work_in_progress
          root << build_element('sto:semiproducts', data[:semiproducts]) if data.key? :semiproducts
          root << build_element('sto:products', data[:products]) if data.key? :products
          root << build_element('sto:animals', data[:animals]) if data.key? :animals
          root << build_element('sto:materialOfOwnProduction', data[:material_of_own_production]) if data.key? :material_of_own_production

          root
        end
      end
    end
  end
end