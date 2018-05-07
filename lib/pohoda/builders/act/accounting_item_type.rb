module Pohoda
  module Builders
    module Act
      class AccountingItemType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('act:id', data[:id]) if data.key? :id
          root << build_element('act:source', data[:source]) if data.key? :source
          if data.key? :number
            root << Typ::NumberType.new('number', data[:number]).builder
          end
          root << build_element('act:symPar', data[:sym_par]) if data.key? :sym_par
          root << build_element('act:text', data[:text]) if data.key? :text
          if data.key? :home_currency
            root << Typ::TypeCurrencyHomeItem.new('homeCurrency', data[:home_currency]).builder
          end
          if data.key? :foreign_currency
            root << Typ::TypeCurrencyForeign.new('foreignCurrency', data[:foreign_currency]).builder
          end
          root << build_element('act:accounting', data[:accounting]) if data.key? :accounting
          if data.key? :address
            root << Typ::Address.new('address', data[:address]).builder
          end
          root << build_element('act:date', data[:date]) if data.key? :date
          root << build_element('act:dateTax', data[:date_tax]) if data.key? :date_tax
          if data.key? :centre
            root << Typ::RefType.new('centre', data[:centre]).builder
          end
          if data.key? :activity
            root << Typ::RefType.new('activity', data[:activity]).builder
          end
          if data.key? :contract
            root << Typ::RefType.new('contract', data[:contract]).builder
          end
          root << build_element('act:note', data[:note]) if data.key? :note
          if data.key? :parameters
            root << Typ::ParametersType.new('parameters', data[:parameters]).builder
          end

          root
        end
      end
    end
  end
end