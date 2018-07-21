module Pohoda
  module Parsers
    module MKasa
      class MKasaRequestType
        include ParserCore::BaseParser

        def export
          submodel_at(MKasa::ExportRequestType, 'mKasa:export')
        end

        def import
          submodel_at(MKasa::ImportRequestType, 'mKasa:import')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:export] = export.to_h if has? 'mKasa:export'
          hash[:import] = import.to_h if has? 'mKasa:import'

          hash
        end
      end
    end
  end
end