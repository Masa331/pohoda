module Pohoda
  module Builders
    module Typ
      module Groups
        module MyGroupOfAccount
          def builder
            root = Ox::Element.new(name)
            if data.respond_to? :attributes
              data.attributes.each { |k, v| root[k] = v }
            end

            root << build_element('typ:accountNo', data[:account_no]) if data.key? :account_no
            root << build_element('typ:bankCode', data[:bank_code]) if data.key? :bank_code

            root
          end
        end
      end
    end
  end
end