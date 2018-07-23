module Pohoda
  module Builders
    module Ctg
      class InternetParamsType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('ctg:idInternetParams', data[:id_internet_params], data[:id_internet_params_attributes]) if data.key? :id_internet_params
          if data.key? :int_parameter
            data[:int_parameter].each { |i| root << Typ::RefTypeLong.new('ctg:intParameter', i).builder }
          end

          root
        end
      end
    end
  end
end