module Pohoda
  class MyIdentity
    include BaseElement

    def address
      MyAddress.new(e 'typ:address')
    end

    def establishment
      Establishment.new(e 'typ:establishment')
    end
  end
end
