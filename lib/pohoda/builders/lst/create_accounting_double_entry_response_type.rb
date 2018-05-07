module Pohoda
  module Builders
    module Lst
      class CreateAccountingDoubleEntryResponseType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :import_details
            root << Rdc::ImportDetailsType.new('importDetails', data[:import_details]).builder
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