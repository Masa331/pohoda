module Pohoda
  module Builders
    module Vch
      class LiquidationItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('vch:text', data[:text]) if data.key? :text
          root << build_element('vch:quantity', data[:quantity]) if data.key? :quantity
          root << build_element('vch:payVAT', data[:pay_vat]) if data.key? :pay_vat
          root << build_element('vch:rateVAT', data[:rate_vat]) if data.key? :rate_vat
          if data.key? :home_currency
            root << Typ::TypeCurrencyHomeItem2.new('vch:homeCurrency', data[:home_currency]).builder
          end
          root << build_element('vch:note', data[:note]) if data.key? :note
          root << build_element('vch:symPar', data[:sym_par]) if data.key? :sym_par
          if data.key? :accounting
            root << Typ::RefType.new('vch:accounting', data[:accounting]).builder
          end
          if data.key? :classification_vat
            root << Typ::ClassificationVATType.new('vch:classificationVAT', data[:classification_vat]).builder
          end
          if data.key? :classification_kvdph
            root << Typ::RefType.new('vch:classificationKVDPH', data[:classification_kvdph]).builder
          end
          if data.key? :centre
            root << Typ::RefType.new('vch:centre', data[:centre]).builder
          end
          if data.key? :activity
            root << Typ::RefType.new('vch:activity', data[:activity]).builder
          end
          if data.key? :contract
            root << Typ::RefType.new('vch:contract', data[:contract]).builder
          end

          root
        end
      end
    end
  end
end