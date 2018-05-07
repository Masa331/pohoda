module Pohoda
  module Builders
    module Act
      class AccountingType2
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('act:credit', data[:credit]) if data.key? :credit
          root << build_element('act:debit', data[:debit]) if data.key? :debit

          root
        end
      end
    end
  end
end