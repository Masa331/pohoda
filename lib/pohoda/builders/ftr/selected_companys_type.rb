module Pohoda
  module Builders
    module Ftr
      class SelectedCompanysType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          if data.key? :company
            data[:company].each { |i| root << Typ::StringCompany.new('ftr:company', i).builder }
          end

          root
        end
      end
    end
  end
end