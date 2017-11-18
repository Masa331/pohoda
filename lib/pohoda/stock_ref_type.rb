module Pohoda
  class StockRefType
    include BaseElement

    def id
      text_at 'id'
    end

    def ids
      text_at 'ids'
    end

    def ext_id
      element_xml = at_xpath 'extId'

      ExtIdType.new element_xml if element_xml
    end

    def ean
      text_at 'EAN'
    end

    def to_h
      { id: id,
        ids: ids,
        ext_id: ext_id.to_h,
        ean: ean }
    end
  end
end
