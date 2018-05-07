module Pohoda
  module Builders
    module Vyd
      class VydejkaType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :vydejka_header
            root << Vyd::VydejkaHeaderType.new('vydejkaHeader', data[:vydejka_header]).builder
          end
          if data.key? :vydejka_detail
            root << Vyd::VydejkaDetailType.new('vydejkaDetail', data[:vydejka_detail]).builder
          end
          if data.key? :vydejka_summary
            root << Vyd::VydejkaSummaryType.new('vydejkaSummary', data[:vydejka_summary]).builder
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