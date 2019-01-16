module Pohoda
  module Builders
    module Pri
      class PrijemkaHeaderType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('pri:id', data[:id], data[:id_attributes]) if data.key? :id
          root << build_element('pri:storno', data[:storno], data[:storno_attributes]) if data.key? :storno
          if data.key? :number
            root << Typ::NumberType.new('pri:number', data[:number]).builder
          end
          root << build_element('pri:date', data[:date], data[:date_attributes]) if data.key? :date
          root << build_element('pri:text', data[:text], data[:text_attributes]) if data.key? :text
          if data.key? :partner_identity
            root << Typ::Address.new('pri:partnerIdentity', data[:partner_identity]).builder
          end
          root << build_element('pri:acc', data[:acc], data[:acc_attributes]) if data.key? :acc
          root << build_element('pri:symPar', data[:sym_par], data[:sym_par_attributes]) if data.key? :sym_par
          root << build_element('pri:isExecuted', data[:is_executed], data[:is_executed_attributes]) if data.key? :is_executed
          root << build_element('pri:isDelivered', data[:is_delivered], data[:is_delivered_attributes]) if data.key? :is_delivered
          if data.key? :centre
            root << Typ::RefType.new('pri:centre', data[:centre]).builder
          end
          if data.key? :activity
            root << Typ::RefType.new('pri:activity', data[:activity]).builder
          end
          if data.key? :contract
            root << Typ::RefType.new('pri:contract', data[:contract]).builder
          end
          if data.key? :reg_va_tin_eu
            root << Typ::RefTypeRegVATinEU.new('pri:regVATinEU', data[:reg_va_tin_eu]).builder
          end
          root << build_element('pri:note', data[:note], data[:note_attributes]) if data.key? :note
          root << build_element('pri:intNote', data[:int_note], data[:int_note_attributes]) if data.key? :int_note
          root << build_element('pri:histRate', data[:hist_rate], data[:hist_rate_attributes]) if data.key? :hist_rate
          root << build_element('pri:markRecord', data[:mark_record], data[:mark_record_attributes]) if data.key? :mark_record
          if data.key? :labels
            element = Ox::Element.new('pri:labels')
            data[:labels].each { |i| element << Typ::LabelType.new('typ:label', i).builder }
            root << element
          end
          if data.key? :parameters
            element = Ox::Element.new('pri:parameters')
            data[:parameters].each { |i| element << Typ::ParameterDocType.new('typ:parameter', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end