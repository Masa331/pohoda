module Pohoda
  module Parsers
    module MKasa
      class ModeCalendarType
        include ParserCore::BaseParser

        def january
          at 'mKasa:january'
        end

        def february
          at 'mKasa:february'
        end

        def march
          at 'mKasa:march'
        end

        def april
          at 'mKasa:april'
        end

        def may
          at 'mKasa:may'
        end

        def june
          at 'mKasa:june'
        end

        def july
          at 'mKasa:july'
        end

        def august
          at 'mKasa:august'
        end

        def september
          at 'mKasa:september'
        end

        def october
          at 'mKasa:october'
        end

        def november
          at 'mKasa:november'
        end

        def december
          at 'mKasa:december'
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:january] = january if has? 'mKasa:january'
          hash[:february] = february if has? 'mKasa:february'
          hash[:march] = march if has? 'mKasa:march'
          hash[:april] = april if has? 'mKasa:april'
          hash[:may] = may if has? 'mKasa:may'
          hash[:june] = june if has? 'mKasa:june'
          hash[:july] = july if has? 'mKasa:july'
          hash[:august] = august if has? 'mKasa:august'
          hash[:september] = september if has? 'mKasa:september'
          hash[:october] = october if has? 'mKasa:october'
          hash[:november] = november if has? 'mKasa:november'
          hash[:december] = december if has? 'mKasa:december'

          hash
        end
      end
    end
  end
end