module Pohoda
  class LinkItemType
    include BaseElement

    def source_agenda
      text_at 'typ:sourceAgenda'
    end

    def source_item_id
      text_at 'typ:sourceItemId'
    end

    def to_h
      { source_agenda: source_agenda,
        source_item_id: source_item_id }
    end
  end
end
