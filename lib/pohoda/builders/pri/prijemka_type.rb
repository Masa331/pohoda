module Pohoda
  module Builders
    module Pri
      class PrijemkaType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :prijemka_header
            root << Pri::PrijemkaHeaderType.new('prijemkaHeader', data[:prijemka_header]).builder
          end
          if data.key? :prijemka_detail
            root << Pri::PrijemkaDetailType.new('prijemkaDetail', data[:prijemka_detail]).builder
          end
          if data.key? :prijemka_summary
            root << Pri::PrijemkaSummaryType.new('prijemkaSummary', data[:prijemka_summary]).builder
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