module Pohoda
  module Builders
    module SEET
      class SendEETType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :record
            root << SEET::RecordSendEETType.new('record', data[:record]).builder
          end

          root
        end
      end
    end
  end
end