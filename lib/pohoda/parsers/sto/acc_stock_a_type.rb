module Pohoda
  module Parsers
    module Sto
      class AccStockAType
        include ParserCore::BaseParser

        def material
          at 'sto:material'
        end

        def goods
          at 'sto:goods'
        end

        def work_in_progress
          at 'sto:workInProgress'
        end

        def semiproducts
          at 'sto:semiproducts'
        end

        def products
          at 'sto:products'
        end

        def animals
          at 'sto:animals'
        end

        def material_of_own_production
          at 'sto:materialOfOwnProduction'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:material] = material if has? 'sto:material'
          hash[:goods] = goods if has? 'sto:goods'
          hash[:work_in_progress] = work_in_progress if has? 'sto:workInProgress'
          hash[:semiproducts] = semiproducts if has? 'sto:semiproducts'
          hash[:products] = products if has? 'sto:products'
          hash[:animals] = animals if has? 'sto:animals'
          hash[:material_of_own_production] = material_of_own_production if has? 'sto:materialOfOwnProduction'

          hash
        end
      end
    end
  end
end