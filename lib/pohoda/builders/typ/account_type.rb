module Pohoda
  module Builders
    module Typ
      class AccountType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('typ:id', data[:id]) if data.key? :id
          root << build_element('typ:ids', data[:ids]) if data.key? :ids
          root << build_element('typ:accountNo', data[:account_no]) if data.key? :account_no
          root << build_element('typ:bankCode', data[:bank_code]) if data.key? :bank_code

          root
        end
      end
    end
  end
end