module Pohoda
  module Builders
    module Typ
      module Groups
        module MyGroupOfRound
          def builder
            root = Ox::Element.new(name)
            root = add_attributes_and_namespaces(root)

            root << build_element('typ:rateVATround', data[:rate_va_tround], data[:rate_va_tround_attributes]) if data.key? :rate_va_tround
            root << build_element('typ:priceRoundSum', data[:price_round_sum], data[:price_round_sum_attributes]) if data.key? :price_round_sum
            root << build_element('typ:priceRoundSumVAT', data[:price_round_sum_vat], data[:price_round_sum_vat_attributes]) if data.key? :price_round_sum_vat

            root
          end
        end
      end
    end
  end
end