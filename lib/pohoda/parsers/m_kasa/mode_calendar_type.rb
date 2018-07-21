module Pohoda
  module Parsers
    module MKasa
      class ModeCalendarType
        include ParserCore::BaseParser

        def january
          at 'mKasa:january'
        end

        def january_attributes
          attributes_at 'mKasa:january'
        end

        def february
          at 'mKasa:february'
        end

        def february_attributes
          attributes_at 'mKasa:february'
        end

        def march
          at 'mKasa:march'
        end

        def march_attributes
          attributes_at 'mKasa:march'
        end

        def april
          at 'mKasa:april'
        end

        def april_attributes
          attributes_at 'mKasa:april'
        end

        def may
          at 'mKasa:may'
        end

        def may_attributes
          attributes_at 'mKasa:may'
        end

        def june
          at 'mKasa:june'
        end

        def june_attributes
          attributes_at 'mKasa:june'
        end

        def july
          at 'mKasa:july'
        end

        def july_attributes
          attributes_at 'mKasa:july'
        end

        def august
          at 'mKasa:august'
        end

        def august_attributes
          attributes_at 'mKasa:august'
        end

        def september
          at 'mKasa:september'
        end

        def september_attributes
          attributes_at 'mKasa:september'
        end

        def october
          at 'mKasa:october'
        end

        def october_attributes
          attributes_at 'mKasa:october'
        end

        def november
          at 'mKasa:november'
        end

        def november_attributes
          attributes_at 'mKasa:november'
        end

        def december
          at 'mKasa:december'
        end

        def december_attributes
          attributes_at 'mKasa:december'
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:january] = january if has? 'mKasa:january'
          hash[:january_attributes] = january_attributes if has? 'mKasa:january'
          hash[:february] = february if has? 'mKasa:february'
          hash[:february_attributes] = february_attributes if has? 'mKasa:february'
          hash[:march] = march if has? 'mKasa:march'
          hash[:march_attributes] = march_attributes if has? 'mKasa:march'
          hash[:april] = april if has? 'mKasa:april'
          hash[:april_attributes] = april_attributes if has? 'mKasa:april'
          hash[:may] = may if has? 'mKasa:may'
          hash[:may_attributes] = may_attributes if has? 'mKasa:may'
          hash[:june] = june if has? 'mKasa:june'
          hash[:june_attributes] = june_attributes if has? 'mKasa:june'
          hash[:july] = july if has? 'mKasa:july'
          hash[:july_attributes] = july_attributes if has? 'mKasa:july'
          hash[:august] = august if has? 'mKasa:august'
          hash[:august_attributes] = august_attributes if has? 'mKasa:august'
          hash[:september] = september if has? 'mKasa:september'
          hash[:september_attributes] = september_attributes if has? 'mKasa:september'
          hash[:october] = october if has? 'mKasa:october'
          hash[:october_attributes] = october_attributes if has? 'mKasa:october'
          hash[:november] = november if has? 'mKasa:november'
          hash[:november_attributes] = november_attributes if has? 'mKasa:november'
          hash[:december] = december if has? 'mKasa:december'
          hash[:december_attributes] = december_attributes if has? 'mKasa:december'

          hash
        end
      end
    end
  end
end