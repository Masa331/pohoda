module Pohoda
  module Builders
    module Pro
      class ProdejkaType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :prodejka_header
            root << Pro::ProdejkaHeaderType.new('prodejkaHeader', data[:prodejka_header]).builder
          end
          if data.key? :prodejka_detail
            root << Pro::ProdejkaDetailType.new('prodejkaDetail', data[:prodejka_detail]).builder
          end
          if data.key? :prodejka_summary
            root << Pro::ProdejkaSummaryType.new('prodejkaSummary', data[:prodejka_summary]).builder
          end
          if data.key? :eet
            root << Typ::EETType.new('EET', data[:eet]).builder
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