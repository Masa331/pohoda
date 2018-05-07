module Pohoda
  module Builders
    module Pre
      class PrevodkaType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :prevodka_header
            root << Pre::PrevodkaHeaderType.new('prevodkaHeader', data[:prevodka_header]).builder
          end
          if data.key? :prevodka_detail
            root << Pre::PrevodkaDetailType.new('prevodkaDetail', data[:prevodka_detail]).builder
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