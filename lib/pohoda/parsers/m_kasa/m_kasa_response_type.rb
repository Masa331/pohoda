module Pohoda
  module Parsers
    module MKasa
      class MKasaResponseType < Rdc::ListVersionType
        include ParserCore::BaseParser

        def configuration
          submodel_at(MKasa::ConfigurationType, 'mKasa:configuration')
        end

        def import_response
          submodel_at(MKasa::ImportResponseType, 'mKasa:importResponse')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:configuration] = configuration.to_h_with_attrs if has? 'mKasa:configuration'
          hash[:import_response] = import_response.to_h_with_attrs if has? 'mKasa:importResponse'

          hash
          super.merge(hash)
        end
      end
    end
  end
end