module Pohoda
  module Builders
    module Bnk
      class BankItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('bnk:text', data[:text], data[:text_attributes]) if data.key? :text
          root << build_element('bnk:homeCurrency', data[:home_currency], data[:home_currency_attributes]) if data.key? :home_currency
          root << build_element('bnk:foreignCurrency', data[:foreign_currency], data[:foreign_currency_attributes]) if data.key? :foreign_currency
          root << build_element('bnk:note', data[:note], data[:note_attributes]) if data.key? :note
          root << build_element('bnk:symPar', data[:sym_par], data[:sym_par_attributes]) if data.key? :sym_par
          if data.key? :accounting
            root << Typ::RefType.new('bnk:accounting', data[:accounting]).builder
          end
          if data.key? :classification_vat
            root << Typ::ClassificationVATType.new('bnk:classificationVAT', data[:classification_vat]).builder
          end
          if data.key? :classification_kvdph
            root << Typ::RefType.new('bnk:classificationKVDPH', data[:classification_kvdph]).builder
          end
          root << build_element('bnk:PDP', data[:pdp], data[:pdp_attributes]) if data.key? :pdp
          root << build_element('bnk:CodePDP', data[:code_pdp], data[:code_pdp_attributes]) if data.key? :code_pdp
          if data.key? :centre
            root << Typ::RefType.new('bnk:centre', data[:centre]).builder
          end
          if data.key? :activity
            root << Typ::RefType.new('bnk:activity', data[:activity]).builder
          end
          if data.key? :contract
            root << Typ::RefType.new('bnk:contract', data[:contract]).builder
          end
          if data.key? :parameters
            element = Ox::Element.new('bnk:parameters')
            data[:parameters].each { |i| element << Typ::ParameterDocType.new('typ:parameter', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end