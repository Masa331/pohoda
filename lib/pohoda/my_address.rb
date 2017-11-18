module Pohoda
  class MyAddress
    include BaseElement

    def address
      element_xml = at_xpath 'address'

      AddressInternetType.new(element_xml) if element_xml
    end

    def establishment
      element_xml = at_xpath 'establishment'

      Establishment.new(element_xml) if element_xml
    end

    def to_h
      { address: address.to_h,
        establishment: establishment.to_h }
    end
  end
end
