module Pohoda
  module Parsers
    module Acp
      class ActionPriceStockItemType
        include ParserCore::BaseParser

        def stock
          at 'acp:stock'
        end

        def stock_attributes
          attributes_at 'acp:stock'
        end

        def text
          at 'acp:text'
        end

        def text_attributes
          attributes_at 'acp:text'
        end

        def storage
          submodel_at(Typ::RefTypeStorage, 'acp:storage')
        end

        def default_price_stock
          submodel_at(Acp::DefaultPriceStockType, 'acp:defaultPriceStock')
        end

        def action_price_stock
          submodel_at(Acp::ActionPriceStockType, 'acp:actionPriceStock')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:stock] = stock if has? 'acp:stock'
          hash[:stock_attributes] = stock_attributes if has? 'acp:stock'
          hash[:text] = text if has? 'acp:text'
          hash[:text_attributes] = text_attributes if has? 'acp:text'
          hash[:storage] = storage.to_h if has? 'acp:storage'
          hash[:default_price_stock] = default_price_stock.to_h if has? 'acp:defaultPriceStock'
          hash[:action_price_stock] = action_price_stock.to_h if has? 'acp:actionPriceStock'

          hash
        end
      end
    end
  end
end