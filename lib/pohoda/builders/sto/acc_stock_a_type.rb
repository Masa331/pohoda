module Pohoda
  module Builders
    module Sto
      class AccStockAType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('sto:material', data[:material], data[:material_attributes]) if data.key? :material
          root << build_element('sto:goods', data[:goods], data[:goods_attributes]) if data.key? :goods
          root << build_element('sto:workInProgress', data[:work_in_progress], data[:work_in_progress_attributes]) if data.key? :work_in_progress
          root << build_element('sto:semiproducts', data[:semiproducts], data[:semiproducts_attributes]) if data.key? :semiproducts
          root << build_element('sto:products', data[:products], data[:products_attributes]) if data.key? :products
          root << build_element('sto:animals', data[:animals], data[:animals_attributes]) if data.key? :animals
          root << build_element('sto:materialOfOwnProduction', data[:material_of_own_production], data[:material_of_own_production_attributes]) if data.key? :material_of_own_production

          root
        end
      end
    end
  end
end