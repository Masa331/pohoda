module Pohoda
  module Builders
    module Vyr
      class VyrobaHeaderType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('vyr:id', data[:id]) if data.key? :id
          if data.key? :number
            root << Typ::NumberType.new('vyr:number', data[:number]).builder
          end
          root << build_element('vyr:date', data[:date]) if data.key? :date
          root << build_element('vyr:time', data[:time]) if data.key? :time
          root << build_element('vyr:symPar', data[:sym_par]) if data.key? :sym_par
          root << build_element('vyr:text', data[:text]) if data.key? :text
          if data.key? :partner_identity
            root << Typ::Address.new('vyr:partnerIdentity', data[:partner_identity]).builder
          end
          if data.key? :centre_source
            root << Typ::RefType.new('vyr:centreSource', data[:centre_source]).builder
          end
          if data.key? :centre_destination
            root << Typ::RefType.new('vyr:centreDestination', data[:centre_destination]).builder
          end
          if data.key? :activity
            root << Typ::RefType.new('vyr:activity', data[:activity]).builder
          end
          if data.key? :contract
            root << Typ::RefType.new('vyr:contract', data[:contract]).builder
          end
          root << build_element('vyr:note', data[:note]) if data.key? :note
          root << build_element('vyr:intNote', data[:int_note]) if data.key? :int_note
          root << build_element('vyr:markRecord', data[:mark_record]) if data.key? :mark_record
          if data.key? :labels
            element = Ox::Element.new('vyr:labels')
            data[:labels].each { |i| element << Typ::LabelType.new('typ:label', i).builder }
            root << element
          end
          if data.key? :parameters
            element = Ox::Element.new('vyr:parameters')
            data[:parameters].each { |i| element << Typ::ParameterDocType.new('typ:parameter', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end