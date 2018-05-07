module Pohoda
  module Builders
    module Stk
      class PicturesType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          if data.key? :picture
            data[:picture].each { |i| root << Stk::PictureType.new('stk:picture', i).builder }
          end

          root
        end
      end
    end
  end
end