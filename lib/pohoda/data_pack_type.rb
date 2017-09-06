module Pohoda
  class DataPackType
    include BaseElement

    def [](key)
      xml.attributes.each_with_object({}) do |(k, v), h|
        h[k] = v.value
      end[key]
    end

    def data_pack_items
      xml.xpath('//inv:invoice').map do |raw|
        Pohoda::Invoice.new(xml)
      end
    end
  end
end
