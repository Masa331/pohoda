module Pohoda
  class MyAddress
    include BaseElement

    def address
      AddressInternetType.new(e 'typ:address')
    end

    def establishment
      Establishment.new(e 'typ:establishment')
    end

    def to_h
      { address: address.to_h,
        establishment: establishment.to_h }
    end
  end
end
