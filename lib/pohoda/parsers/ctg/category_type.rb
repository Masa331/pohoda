module Pohoda
  module Parsers
    module Ctg
      class CategoryType
        include ParserCore::BaseParser

        def parent_id
          at 'ctg:parentId'
        end

        def parent_id_attributes
          attributes_at 'ctg:parentId'
        end

        def id
          at 'ctg:id'
        end

        def id_attributes
          attributes_at 'ctg:id'
        end

        def name
          at 'ctg:name'
        end

        def name_attributes
          attributes_at 'ctg:name'
        end

        def description
          at 'ctg:description'
        end

        def description_attributes
          attributes_at 'ctg:description'
        end

        def sequence
          at 'ctg:sequence'
        end

        def sequence_attributes
          attributes_at 'ctg:sequence'
        end

        def displayed
          at 'ctg:displayed'
        end

        def displayed_attributes
          attributes_at 'ctg:displayed'
        end

        def picture
          at 'ctg:picture'
        end

        def picture_attributes
          attributes_at 'ctg:picture'
        end

        def note
          at 'ctg:note'
        end

        def note_attributes
          attributes_at 'ctg:note'
        end

        def mark_record
          at 'ctg:markRecord'
        end

        def mark_record_attributes
          attributes_at 'ctg:markRecord'
        end

        def sub_categories
          array_of_at(Ctg::CategoryType, ['ctg:subCategories', 'ctg:category'])
        end

        def internet_params
          submodel_at(Ctg::InternetParamsType, 'ctg:internetParams')
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:parent_id] = parent_id if has? 'ctg:parentId'
          hash[:parent_id_attributes] = parent_id_attributes if has? 'ctg:parentId'
          hash[:id] = id if has? 'ctg:id'
          hash[:id_attributes] = id_attributes if has? 'ctg:id'
          hash[:name] = name if has? 'ctg:name'
          hash[:name_attributes] = name_attributes if has? 'ctg:name'
          hash[:description] = description if has? 'ctg:description'
          hash[:description_attributes] = description_attributes if has? 'ctg:description'
          hash[:sequence] = sequence if has? 'ctg:sequence'
          hash[:sequence_attributes] = sequence_attributes if has? 'ctg:sequence'
          hash[:displayed] = displayed if has? 'ctg:displayed'
          hash[:displayed_attributes] = displayed_attributes if has? 'ctg:displayed'
          hash[:picture] = picture if has? 'ctg:picture'
          hash[:picture_attributes] = picture_attributes if has? 'ctg:picture'
          hash[:note] = note if has? 'ctg:note'
          hash[:note_attributes] = note_attributes if has? 'ctg:note'
          hash[:mark_record] = mark_record if has? 'ctg:markRecord'
          hash[:mark_record_attributes] = mark_record_attributes if has? 'ctg:markRecord'
          hash[:sub_categories] = sub_categories.map(&:to_h) if has? 'ctg:subCategories'
          hash[:internet_params] = internet_params.to_h if has? 'ctg:internetParams'

          hash
        end
      end
    end
  end
end