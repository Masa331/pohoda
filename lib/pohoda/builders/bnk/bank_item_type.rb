module Pohoda
  module Builders
    module Bnk
      class BankItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('bnk:text', data[:text]) if data.key? :text
          root << build_element('bnk:homeCurrency', data[:home_currency]) if data.key? :home_currency
          root << build_element('bnk:foreignCurrency', data[:foreign_currency]) if data.key? :foreign_currency
          root << build_element('bnk:note', data[:note]) if data.key? :note
          root << build_element('bnk:symPar', data[:sym_par]) if data.key? :sym_par
          if data.key? :accounting
            root << Typ::RefType.new('accounting', data[:accounting]).builder
          end
          if data.key? :classification_vat
            root << Typ::ClassificationVATType.new('classificationVAT', data[:classification_vat]).builder
          end
          if data.key? :classification_kvdph
            root << Typ::RefType.new('classificationKVDPH', data[:classification_kvdph]).builder
          end
          if data.key? :centre
            root << Typ::RefType.new('centre', data[:centre]).builder
          end
          if data.key? :activity
            root << Typ::RefType.new('activity', data[:activity]).builder
          end
          if data.key? :contract
            root << Typ::RefType.new('contract', data[:contract]).builder
          end
          if data.key? :parameters
            root << Typ::ParametersType.new('parameters', data[:parameters]).builder
          end

          root
        end
      end
    end
  end
end