module Pohoda
  module Parsers
    module Sto
      class AccStockAType
        include ParserCore::BaseParser

        def material
          at 'sto:material'
        end

        def material_attributes
          attributes_at 'sto:material'
        end

        def goods
          at 'sto:goods'
        end

        def goods_attributes
          attributes_at 'sto:goods'
        end

        def work_in_progress
          at 'sto:workInProgress'
        end

        def work_in_progress_attributes
          attributes_at 'sto:workInProgress'
        end

        def semiproducts
          at 'sto:semiproducts'
        end

        def semiproducts_attributes
          attributes_at 'sto:semiproducts'
        end

        def products
          at 'sto:products'
        end

        def products_attributes
          attributes_at 'sto:products'
        end

        def animals
          at 'sto:animals'
        end

        def animals_attributes
          attributes_at 'sto:animals'
        end

        def material_of_own_production
          at 'sto:materialOfOwnProduction'
        end

        def material_of_own_production_attributes
          attributes_at 'sto:materialOfOwnProduction'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:material] = material if has? 'sto:material'
          hash[:material_attributes] = material_attributes if has? 'sto:material'
          hash[:goods] = goods if has? 'sto:goods'
          hash[:goods_attributes] = goods_attributes if has? 'sto:goods'
          hash[:work_in_progress] = work_in_progress if has? 'sto:workInProgress'
          hash[:work_in_progress_attributes] = work_in_progress_attributes if has? 'sto:workInProgress'
          hash[:semiproducts] = semiproducts if has? 'sto:semiproducts'
          hash[:semiproducts_attributes] = semiproducts_attributes if has? 'sto:semiproducts'
          hash[:products] = products if has? 'sto:products'
          hash[:products_attributes] = products_attributes if has? 'sto:products'
          hash[:animals] = animals if has? 'sto:animals'
          hash[:animals_attributes] = animals_attributes if has? 'sto:animals'
          hash[:material_of_own_production] = material_of_own_production if has? 'sto:materialOfOwnProduction'
          hash[:material_of_own_production_attributes] = material_of_own_production_attributes if has? 'sto:materialOfOwnProduction'

          hash
        end
      end
    end
  end
end