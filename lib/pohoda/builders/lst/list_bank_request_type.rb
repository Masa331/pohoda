module Pohoda
  module Builders
    module Lst
      class ListBankRequestType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :request_bank
            root << Ftr::RequestBankType.new('lst:requestBank', data[:request_bank]).builder
          end

          root
        end
      end
    end
  end
end