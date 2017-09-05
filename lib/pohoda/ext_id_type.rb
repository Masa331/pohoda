module Pohoda
  class ExtIdType
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

    def to_h
      { ids: ids,
        ex_system_name: ex_system_name,
        ex_system_text: ex_system_text }
    end
  end
end
