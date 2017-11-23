module Pohoda
  class ExtIdType
    include BaseElement

    def ids
      at :'typ:ids'
    end

    def ex_system_name
      at :'typ:exSystemName'
    end

    def ex_system_text
      at :'typ:exSystemText'
    end

    def to_h
      { ids: ids,
        ex_system_name: ex_system_name,
        ex_system_text: ex_system_text }.delete_if { |k, v| v.nil? || v.empty? }
    end
  end
end
