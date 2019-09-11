module Pohoda
  module Parsers
    module Bal
      class HomeCurrencyType
        include ParserCore::BaseParser

        def amount_md
          at 'bal:amountMD'
        end

        def amount_md_attributes
          attributes_at 'bal:amountMD'
        end

        def amount_d
          at 'bal:amountD'
        end

        def amount_d_attributes
          attributes_at 'bal:amountD'
        end

        def amount_remain
          at 'bal:amountRemain'
        end

        def amount_remain_attributes
          attributes_at 'bal:amountRemain'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:amount_md] = amount_md if has? 'bal:amountMD'
          hash[:amount_md_attributes] = amount_md_attributes if has? 'bal:amountMD'
          hash[:amount_d] = amount_d if has? 'bal:amountD'
          hash[:amount_d_attributes] = amount_d_attributes if has? 'bal:amountD'
          hash[:amount_remain] = amount_remain if has? 'bal:amountRemain'
          hash[:amount_remain_attributes] = amount_remain_attributes if has? 'bal:amountRemain'

          hash
        end
      end
    end
  end
end