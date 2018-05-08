module Pohoda
  module Builders
    module Pro
      class ProdejkaHeaderType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('pro:id', data[:id]) if data.key? :id
          if data.key? :ext_id
            root << Typ::ExtIdType.new('pro:extId', data[:ext_id]).builder
          end
          root << build_element('pro:prodejkaType', data[:prodejka_type]) if data.key? :prodejka_type
          root << build_element('pro:storno', data[:storno]) if data.key? :storno
          if data.key? :number
            root << Typ::NumberType.new('pro:number', data[:number]).builder
          end
          root << build_element('pro:date', data[:date]) if data.key? :date
          if data.key? :accounting
            root << Typ::AccountingType.new('pro:accounting', data[:accounting]).builder
          end
          root << build_element('pro:text', data[:text]) if data.key? :text
          if data.key? :partner_identity
            root << Typ::Address.new('pro:partnerIdentity', data[:partner_identity]).builder
          end
          if data.key? :payment_type
            root << Typ::PaymentType.new('pro:paymentType', data[:payment_type]).builder
          end
          if data.key? :price_level
            root << Typ::RefType.new('pro:priceLevel', data[:price_level]).builder
          end
          if data.key? :centre
            root << Typ::RefType.new('pro:centre', data[:centre]).builder
          end
          if data.key? :activity
            root << Typ::RefType.new('pro:activity', data[:activity]).builder
          end
          if data.key? :contract
            root << Typ::RefType.new('pro:contract', data[:contract]).builder
          end
          if data.key? :kasa
            root << Typ::RefType.new('pro:kasa', data[:kasa]).builder
          end
          root << build_element('pro:note', data[:note]) if data.key? :note
          root << build_element('pro:intNote', data[:int_note]) if data.key? :int_note
          root << build_element('pro:markRecord', data[:mark_record]) if data.key? :mark_record
          if data.key? :labels
            element = Ox::Element.new('pro:labels')
            data[:labels].each { |i| element << Typ::LabelType.new('typ:label', i).builder }
            root << element
          end
          if data.key? :parameters
            element = Ox::Element.new('pro:parameters')
            data[:parameters].each { |i| element << Typ::ParameterDocType.new('typ:parameter', i).builder }
            root << element
          end
          if data.key? :validate
            root << Typ::TypeValidate.new('pro:validate', data[:validate]).builder
          end

          root
        end
      end
    end
  end
end