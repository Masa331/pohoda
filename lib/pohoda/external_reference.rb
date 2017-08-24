module Pohoda
  class ExternalReference
    include BaseElement

    def ids
      t 'typ:ids'
    end

    def ex_system_name
      t 'typ:exSystemName'
    end

    def ex_system_text
      t 'typ:exSystemText'
    end
  end
end
