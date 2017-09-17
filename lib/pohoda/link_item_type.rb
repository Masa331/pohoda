module Pohoda
  class LinkItemType
    include BaseElement

    def source_agenda
      t 'typ:sourceAgenda'
    end

    def source_item_id
      t 'typ:sourceItemId'
    end

    def to_h
      { source_agenda: source_agenda,
        source_item_id: source_item_id }
    end
  end
end
