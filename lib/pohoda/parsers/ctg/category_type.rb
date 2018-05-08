module Pohoda
  module Parsers
    module Ctg
      class CategoryType
        include ParserCore::BaseParser

        def parent_id
          at 'ctg:parentId'
        end

        def id
          at 'ctg:id'
        end

        def name
          at 'ctg:name'
        end

        def description
          at 'ctg:description'
        end

        def sequence
          at 'ctg:sequence'
        end

        def displayed
          at 'ctg:displayed'
        end

        def picture
          at 'ctg:picture'
        end

        def note
          at 'ctg:note'
        end

        def mark_record
          at 'ctg:markRecord'
        end

        def sub_categories
          array_of_at(Ctg::CategoryType, ['ctg:subCategories', 'ctg:category'])
        end

        def internet_params
          submodel_at(Ctg::InternetParamsType, 'ctg:internetParams')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:parent_id] = parent_id if has? 'ctg:parentId'
          hash[:id] = id if has? 'ctg:id'
          hash[:name] = name if has? 'ctg:name'
          hash[:description] = description if has? 'ctg:description'
          hash[:sequence] = sequence if has? 'ctg:sequence'
          hash[:displayed] = displayed if has? 'ctg:displayed'
          hash[:picture] = picture if has? 'ctg:picture'
          hash[:note] = note if has? 'ctg:note'
          hash[:mark_record] = mark_record if has? 'ctg:markRecord'
          hash[:sub_categories] = sub_categories.map(&:to_h_with_attrs) if has? 'ctg:subCategories'
          hash[:internet_params] = internet_params.to_h_with_attrs if has? 'ctg:internetParams'

          hash
        end
      end
    end
  end
end