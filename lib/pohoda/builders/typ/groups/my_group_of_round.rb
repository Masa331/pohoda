module Pohoda
  module Builders
    module Typ
      module Groups
        module MyGroupOfRound
          def builder
            root = Ox::Element.new(name)
            if data.respond_to? :attributes
              data.attributes.each { |k, v| root[k] = v }
            end

            root << build_element('typ:rateVATround', data[:rate_va_tround]) if data.key? :rate_va_tround
            root << build_element('typ:priceRoundSum', data[:price_round_sum]) if data.key? :price_round_sum
            root << build_element('typ:priceRoundSumVAT', data[:price_round_sum_vat]) if data.key? :price_round_sum_vat

            root
          end
        end
      end
    end
  end
end