module Pohoda
  class ExtIdType
    include BaseElement

    def ids
      text_at 'ids'
    end

    def ex_system_name
      text_at 'exSystemName'
    end

    def ex_system_text
      text_at 'exSystemText'
    end

    def to_h
      { ids: ids,
        ex_system_name: ex_system_name,
        ex_system_text: ex_system_text }
    end
  end
end
