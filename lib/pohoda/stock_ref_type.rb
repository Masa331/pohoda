module Pohoda
  class StockRefType
    include BaseElement

    def id
      at :'typ:id'
    end

    def ids
      at :'typ:ids'
    end

    def ext_id
      element_xml = at :'typ:extId'

      ExtIdType.new element_xml if element_xml
    end

    def ean
      at :'typ:EAN'
    end

    def to_h
      { id: id,
        ids: ids,
        ext_id: ext_id.to_h,
        ean: ean }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
