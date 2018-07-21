module Pohoda
  module Builders
    module Lst
      class CreateAccountingDoubleEntryResponseType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.key? :attributes
            data[:attributes].each { |k, v| root[k] = v }
          end

          if data.key? :import_details
            element = Ox::Element.new('lst:importDetails')
            data[:import_details].each { |i| element << Rdc::DetailType.new('rdc:detail', i).builder }
            root << element
          end
          if data.key? :create_accounting_response
            data[:create_accounting_response].each { |i| root << Lst::CreateAccountingResponseType.new('lst:createAccountingResponse', i).builder }
          end

          root
        end
      end
    end
  end
end