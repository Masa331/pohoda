module Pohoda
  module Builders
    module SEET
      class SendEETType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :record
            root << SEET::RecordSendEETType.new('sEET:record', data[:record]).builder
          end

          root
        end
      end
    end
  end
end