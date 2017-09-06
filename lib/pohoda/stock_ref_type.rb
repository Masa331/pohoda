module Pohoda
  class StockRefType
    include BaseElement

    def id
      t 'typ:id'
    end

    def ids
      t 'typ:ids'
    end

    def ext_id
      ExtIdType.new e 'typ:extId'
    end

    def ean
      t 'typ:EAN'
    end

    def to_h
      { id: id,
        ids: ids,
        ext_id: ext_id.to_h,
        ean: ean }
    end
  end
end
