module Pohoda
  module Builders
    module Stk
      class StockHeaderType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          root = add_attributes_and_namespaces(root)

          root << build_element('stk:id', data[:id], data[:id_attributes]) if data.key? :id
          if data.key? :ext_id
            root << Typ::ExtIdType.new('stk:extId', data[:ext_id]).builder
          end
          root << build_element('stk:stockType', data[:stock_type], data[:stock_type_attributes]) if data.key? :stock_type
          root << build_element('stk:code', data[:code], data[:code_attributes]) if data.key? :code
          root << build_element('stk:EAN', data[:ean], data[:ean_attributes]) if data.key? :ean
          root << build_element('stk:PLU', data[:plu], data[:plu_attributes]) if data.key? :plu
          root << build_element('stk:isSales', data[:is_sales], data[:is_sales_attributes]) if data.key? :is_sales
          root << build_element('stk:isSerialNumber', data[:is_serial_number], data[:is_serial_number_attributes]) if data.key? :is_serial_number
          root << build_element('stk:isInternet', data[:is_internet], data[:is_internet_attributes]) if data.key? :is_internet
          root << build_element('stk:isBatch', data[:is_batch], data[:is_batch_attributes]) if data.key? :is_batch
          root << build_element('stk:purchasingRateVAT', data[:purchasing_rate_vat], data[:purchasing_rate_vat_attributes]) if data.key? :purchasing_rate_vat
          root << build_element('stk:sellingRateVAT', data[:selling_rate_vat], data[:selling_rate_vat_attributes]) if data.key? :selling_rate_vat
          root << build_element('stk:name', data[:name], data[:name_attributes]) if data.key? :name
          root << build_element('stk:nameComplement', data[:name_complement], data[:name_complement_attributes]) if data.key? :name_complement
          root << build_element('stk:unit', data[:unit], data[:unit_attributes]) if data.key? :unit
          root << build_element('stk:unit2', data[:unit2], data[:unit2_attributes]) if data.key? :unit2
          root << build_element('stk:unit3', data[:unit3], data[:unit3_attributes]) if data.key? :unit3
          root << build_element('stk:coefficient2', data[:coefficient2], data[:coefficient2_attributes]) if data.key? :coefficient2
          root << build_element('stk:coefficient3', data[:coefficient3], data[:coefficient3_attributes]) if data.key? :coefficient3
          if data.key? :storage
            root << Typ::RefTypeStorage.new('stk:storage', data[:storage]).builder
          end
          if data.key? :type_price
            root << Typ::RefType.new('stk:typePrice', data[:type_price]).builder
          end
          root << build_element('stk:weightedPurchasePrice', data[:weighted_purchase_price], data[:weighted_purchase_price_attributes]) if data.key? :weighted_purchase_price
          root << build_element('stk:purchasingPrice', data[:purchasing_price], data[:purchasing_price_attributes]) if data.key? :purchasing_price
          root << build_element('stk:sellingPrice', data[:selling_price], data[:selling_price_attributes]) if data.key? :selling_price
          root << build_element('stk:limitMin', data[:limit_min], data[:limit_min_attributes]) if data.key? :limit_min
          root << build_element('stk:limitMax', data[:limit_max], data[:limit_max_attributes]) if data.key? :limit_max
          root << build_element('stk:mass', data[:mass], data[:mass_attributes]) if data.key? :mass
          root << build_element('stk:volume', data[:volume], data[:volume_attributes]) if data.key? :volume
          root << build_element('stk:count', data[:count], data[:count_attributes]) if data.key? :count
          root << build_element('stk:countReceivedOrders', data[:count_received_orders], data[:count_received_orders_attributes]) if data.key? :count_received_orders
          root << build_element('stk:reservation', data[:reservation], data[:reservation_attributes]) if data.key? :reservation
          if data.key? :supplier
            root << Typ::CompanyType.new('stk:supplier', data[:supplier]).builder
          end
          root << build_element('stk:orderName', data[:order_name], data[:order_name_attributes]) if data.key? :order_name
          root << build_element('stk:orderQuantity', data[:order_quantity], data[:order_quantity_attributes]) if data.key? :order_quantity
          root << build_element('stk:countIssuedOrders', data[:count_issued_orders], data[:count_issued_orders_attributes]) if data.key? :count_issued_orders
          root << build_element('stk:reclamation', data[:reclamation], data[:reclamation_attributes]) if data.key? :reclamation
          root << build_element('stk:shortName', data[:short_name], data[:short_name_attributes]) if data.key? :short_name
          if data.key? :type_rp
            root << Typ::RefType.new('stk:typeRP', data[:type_rp]).builder
          end
          root << build_element('stk:guaranteeType', data[:guarantee_type], data[:guarantee_type_attributes]) if data.key? :guarantee_type
          root << build_element('stk:guarantee', data[:guarantee], data[:guarantee_attributes]) if data.key? :guarantee
          root << build_element('stk:producer', data[:producer], data[:producer_attributes]) if data.key? :producer
          root << build_element('stk:unitOfMeasure', data[:unit_of_measure], data[:unit_of_measure_attributes]) if data.key? :unit_of_measure
          root << build_element('stk:coefficientOfMeasure', data[:coefficient_of_measure], data[:coefficient_of_measure_attributes]) if data.key? :coefficient_of_measure
          root << build_element('stk:EETItem', data[:eet_item], data[:eet_item_attributes]) if data.key? :eet_item
          root << build_element('stk:dicPP', data[:dic_pp], data[:dic_pp_attributes]) if data.key? :dic_pp
          root << build_element('stk:yield', data[:yield], data[:yield_attributes]) if data.key? :yield
          root << build_element('stk:cost', data[:cost], data[:cost_attributes]) if data.key? :cost
          if data.key? :classification_vat_receipt
            root << Typ::ClassificationVATType.new('stk:classificationVATReceipt', data[:classification_vat_receipt]).builder
          end
          if data.key? :classification_kvdph_receipt
            root << Typ::RefType.new('stk:classificationKVDPHReceipt', data[:classification_kvdph_receipt]).builder
          end
          if data.key? :classification_vat_issue
            root << Typ::ClassificationVATType.new('stk:classificationVATIssue', data[:classification_vat_issue]).builder
          end
          if data.key? :classification_kvdph_issue
            root << Typ::RefType.new('stk:classificationKVDPHIssue', data[:classification_kvdph_issue]).builder
          end
          root << build_element('stk:classOfStock', data[:class_of_stock], data[:class_of_stock_attributes]) if data.key? :class_of_stock
          root << build_element('stk:acc', data[:acc], data[:acc_attributes]) if data.key? :acc
          if data.key? :type_service_moss
            root << Typ::MOSStype.new('stk:typeServiceMOSS', data[:type_service_moss]).builder
          end
          root << build_element('stk:controlLimitTaxLiability', data[:control_limit_tax_liability], data[:control_limit_tax_liability_attributes]) if data.key? :control_limit_tax_liability
          root << build_element('stk:PDP', data[:pdp], data[:pdp_attributes]) if data.key? :pdp
          if data.key? :pd_pclassification_vat_issue
            root << Typ::ClassificationVATType.new('stk:PDPclassificationVATIssue', data[:pd_pclassification_vat_issue]).builder
          end
          if data.key? :pd_pclassification_kvdph_issue
            root << Typ::RefType.new('stk:PDPclassificationKVDPHIssue', data[:pd_pclassification_kvdph_issue]).builder
          end
          root << build_element('stk:CodePDP', data[:code_pdp], data[:code_pdp_attributes]) if data.key? :code_pdp
          if data.key? :intrastat
            root << Stk::InstrastatType.new('stk:intrastat', data[:intrastat]).builder
          end
          root << build_element('stk:news', data[:news], data[:news_attributes]) if data.key? :news
          root << build_element('stk:clearanceSale', data[:clearance_sale], data[:clearance_sale_attributes]) if data.key? :clearance_sale
          root << build_element('stk:sale', data[:sale], data[:sale_attributes]) if data.key? :sale
          root << build_element('stk:recommended', data[:recommended], data[:recommended_attributes]) if data.key? :recommended
          root << build_element('stk:discount', data[:discount], data[:discount_attributes]) if data.key? :discount
          root << build_element('stk:prepare', data[:prepare], data[:prepare_attributes]) if data.key? :prepare
          root << build_element('stk:availability', data[:availability], data[:availability_attributes]) if data.key? :availability
          root << build_element('stk:handlingInformation', data[:handling_information], data[:handling_information_attributes]) if data.key? :handling_information
          if data.key? :related_files
            element = Ox::Element.new('stk:relatedFiles')
            data[:related_files].each { |i| element << Stk::RelatedFileType.new('stk:relatedFile', i).builder }
            root << element
          end
          if data.key? :related_links
            element = Ox::Element.new('stk:relatedLinks')
            data[:related_links].each { |i| element << Stk::RelatedLinkType.new('stk:relatedLink', i).builder }
            root << element
          end
          root << build_element('stk:foreignName1', data[:foreign_name1], data[:foreign_name1_attributes]) if data.key? :foreign_name1
          root << build_element('stk:foreignNameComplement1', data[:foreign_name_complement1], data[:foreign_name_complement1_attributes]) if data.key? :foreign_name_complement1
          root << build_element('stk:foreignName2', data[:foreign_name2], data[:foreign_name2_attributes]) if data.key? :foreign_name2
          root << build_element('stk:foreignNameComplement2', data[:foreign_name_complement2], data[:foreign_name_complement2_attributes]) if data.key? :foreign_name_complement2
          root << build_element('stk:description', data[:description], data[:description_attributes]) if data.key? :description
          root << build_element('stk:description2', data[:description2], data[:description2_attributes]) if data.key? :description2
          if data.key? :pictures
            element = Ox::Element.new('stk:pictures')
            data[:pictures].each { |i| element << Stk::PictureType.new('stk:picture', i).builder }
            root << element
          end
          if data.key? :categories
            element = Ox::Element.new('stk:categories')
            data[:categories].map { |i| Ox::Element.new('stk:idCategory') << i }.each { |i| element << i }
            root << element
          end
          if data.key? :related_stocks
            element = Ox::Element.new('stk:relatedStocks')
            data[:related_stocks].each { |i| element << Typ::OrderStockItemType.new('stk:idStocks', i).builder }
            root << element
          end
          if data.key? :alternative_stocks
            element = Ox::Element.new('stk:alternativeStocks')
            data[:alternative_stocks].each { |i| element << Typ::OrderStockItemType.new('stk:idStocks', i).builder }
            root << element
          end
          if data.key? :int_parameters
            element = Ox::Element.new('stk:intParameters')
            data[:int_parameters].each { |i| element << Stk::IntParameterType.new('stk:intParameter', i).builder }
            root << element
          end
          root << build_element('stk:note', data[:note], data[:note_attributes]) if data.key? :note
          root << build_element('stk:markRecord', data[:mark_record], data[:mark_record_attributes]) if data.key? :mark_record
          if data.key? :labels
            element = Ox::Element.new('stk:labels')
            data[:labels].each { |i| element << Typ::LabelType.new('typ:label', i).builder }
            root << element
          end
          if data.key? :parameters
            element = Ox::Element.new('stk:parameters')
            data[:parameters].each { |i| element << Typ::ParameterDocType.new('typ:parameter', i).builder }
            root << element
          end

          root
        end
      end
    end
  end
end