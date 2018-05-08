module Pohoda
  module Builders
    module Pre
      class PrevodkaHeaderType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('pre:id', data[:id]) if data.key? :id
          if data.key? :number
            root << Typ::NumberType.new('pre:number', data[:number]).builder
          end
          root << build_element('pre:date', data[:date]) if data.key? :date
          root << build_element('pre:time', data[:time]) if data.key? :time
          root << build_element('pre:dateOfReceipt', data[:date_of_receipt]) if data.key? :date_of_receipt
          root << build_element('pre:timeOfReceipt', data[:time_of_receipt]) if data.key? :time_of_receipt
          root << build_element('pre:symPar', data[:sym_par]) if data.key? :sym_par
          if data.key? :store
            root << Typ::RefType.new('pre:store', data[:store]).builder
          end
          root << build_element('pre:text', data[:text]) if data.key? :text
          if data.key? :partner_identity
            root << Typ::Address.new('pre:partnerIdentity', data[:partner_identity]).builder
          end
          if data.key? :centre_source
            root << Typ::RefType.new('pre:centreSource', data[:centre_source]).builder
          end
          if data.key? :centre_destination
            root << Typ::RefType.new('pre:centreDestination', data[:centre_destination]).builder
          end
          if data.key? :activity
            root << Typ::RefType.new('pre:activity', data[:activity]).builder
          end
          if data.key? :contract
            root << Typ::RefType.new('pre:contract', data[:contract]).builder
          end
          root << build_element('pre:note', data[:note]) if data.key? :note
          root << build_element('pre:intNote', data[:int_note]) if data.key? :int_note
          root << build_element('pre:markRecord', data[:mark_record]) if data.key? :mark_record
          if data.key? :parameters
            element = Ox::Element.new('pre:parameters')
            data[:parameters].each { |i| element << Typ::ParameterDocType.new('typ:parameter', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end