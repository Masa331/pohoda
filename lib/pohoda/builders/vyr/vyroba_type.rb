module Pohoda
  module Builders
    module Vyr
      class VyrobaType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :vyroba_header
            root << Vyr::VyrobaHeaderType.new('vyrobaHeader', data[:vyroba_header]).builder
          end
          if data.key? :vyroba_detail
            root << Vyr::VyrobaDetailType.new('vyrobaDetail', data[:vyroba_detail]).builder
          end
          if data.key? :print
            root << Prn::AgendaPrintType.new('print', data[:print]).builder
          end

          root
        end
      end
    end
  end
end