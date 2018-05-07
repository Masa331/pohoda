module Pohoda
  module Builders
    module Stk
      class StockHeaderType
        include ParserCore::BaseBuilder

        def builder
          root = Ox::Element.new(name)
          if data.respond_to? :attributes
            data.attributes.each { |k, v| root[k] = v }
          end

          root << build_element('stk:id', data[:id]) if data.key? :id
          if data.key? :ext_id
            root << Typ::ExtIdType.new('extId', data[:ext_id]).builder
          end
          root << build_element('stk:stockType', data[:stock_type]) if data.key? :stock_type
          root << build_element('stk:code', data[:code]) if data.key? :code
          root << build_element('stk:EAN', data[:ean]) if data.key? :ean
          root << build_element('stk:PLU', data[:plu]) if data.key? :plu
          root << build_element('stk:isSales', data[:is_sales]) if data.key? :is_sales
          root << build_element('stk:isSerialNumber', data[:is_serial_number]) if data.key? :is_serial_number
          root << build_element('stk:isInternet', data[:is_internet]) if data.key? :is_internet
          root << build_element('stk:isBatch', data[:is_batch]) if data.key? :is_batch
          root << build_element('stk:purchasingRateVAT', data[:purchasing_rate_vat]) if data.key? :purchasing_rate_vat
          root << build_element('stk:sellingRateVAT', data[:selling_rate_vat]) if data.key? :selling_rate_vat
          root << build_element('stk:name', data[:name]) if data.key? :name
          root << build_element('stk:nameComplement', data[:name_complement]) if data.key? :name_complement
          root << build_element('stk:unit', data[:unit]) if data.key? :unit
          root << build_element('stk:unit2', data[:unit2]) if data.key? :unit2
          root << build_element('stk:unit3', data[:unit3]) if data.key? :unit3
          root << build_element('stk:coefficient2', data[:coefficient2]) if data.key? :coefficient2
          root << build_element('stk:coefficient3', data[:coefficient3]) if data.key? :coefficient3
          if data.key? :storage
            root << Typ::RefTypeStorage.new('storage', data[:storage]).builder
          end
          if data.key? :type_price
            root << Typ::RefType.new('typePrice', data[:type_price]).builder
          end
          root << build_element('stk:weightedPurchasePrice', data[:weighted_purchase_price]) if data.key? :weighted_purchase_price
          root << build_element('stk:purchasingPrice', data[:purchasing_price]) if data.key? :purchasing_price
          root << build_element('stk:sellingPrice', data[:selling_price]) if data.key? :selling_price
          root << build_element('stk:limitMin', data[:limit_min]) if data.key? :limit_min
          root << build_element('stk:limitMax', data[:limit_max]) if data.key? :limit_max
          root << build_element('stk:mass', data[:mass]) if data.key? :mass
          root << build_element('stk:volume', data[:volume]) if data.key? :volume
          root << build_element('stk:count', data[:count]) if data.key? :count
          root << build_element('stk:countReceivedOrders', data[:count_received_orders]) if data.key? :count_received_orders
          root << build_element('stk:reservation', data[:reservation]) if data.key? :reservation
          if data.key? :supplier
            root << Typ::CompanyType.new('supplier', data[:supplier]).builder
          end
          root << build_element('stk:orderName', data[:order_name]) if data.key? :order_name
          root << build_element('stk:orderQuantity', data[:order_quantity]) if data.key? :order_quantity
          root << build_element('stk:countIssuedOrders', data[:count_issued_orders]) if data.key? :count_issued_orders
          root << build_element('stk:reclamation', data[:reclamation]) if data.key? :reclamation
          root << build_element('stk:shortName', data[:short_name]) if data.key? :short_name
          if data.key? :type_rp
            root << Typ::RefType.new('typeRP', data[:type_rp]).builder
          end
          root << build_element('stk:guaranteeType', data[:guarantee_type]) if data.key? :guarantee_type
          root << build_element('stk:guarantee', data[:guarantee]) if data.key? :guarantee
          root << build_element('stk:producer', data[:producer]) if data.key? :producer
          root << build_element('stk:EETItem', data[:eet_item]) if data.key? :eet_item
          root << build_element('stk:dicPP', data[:dic_pp]) if data.key? :dic_pp
          root << build_element('stk:yield', data[:yield]) if data.key? :yield
          root << build_element('stk:cost', data[:cost]) if data.key? :cost
          if data.key? :classification_vat_receipt
            root << Typ::ClassificationVATType.new('classificationVATReceipt', data[:classification_vat_receipt]).builder
          end
          if data.key? :classification_kvdph_receipt
            root << Typ::RefType.new('classificationKVDPHReceipt', data[:classification_kvdph_receipt]).builder
          end
          if data.key? :classification_vat_issue
            root << Typ::ClassificationVATType.new('classificationVATIssue', data[:classification_vat_issue]).builder
          end
          if data.key? :classification_kvdph_issue
            root << Typ::RefType.new('classificationKVDPHIssue', data[:classification_kvdph_issue]).builder
          end
          root << build_element('stk:classOfStock', data[:class_of_stock]) if data.key? :class_of_stock
          root << build_element('stk:acc', data[:acc]) if data.key? :acc
          if data.key? :type_service_moss
            root << Typ::MOSStype.new('typeServiceMOSS', data[:type_service_moss]).builder
          end
          root << build_element('stk:controlLimitTaxLiability', data[:control_limit_tax_liability]) if data.key? :control_limit_tax_liability
          if data.key? :intrastat
            root << Stk::InstrastatType.new('intrastat', data[:intrastat]).builder
          end
          root << build_element('stk:news', data[:news]) if data.key? :news
          root << build_element('stk:clearanceSale', data[:clearance_sale]) if data.key? :clearance_sale
          root << build_element('stk:sale', data[:sale]) if data.key? :sale
          root << build_element('stk:recommended', data[:recommended]) if data.key? :recommended
          root << build_element('stk:discount', data[:discount]) if data.key? :discount
          root << build_element('stk:prepare', data[:prepare]) if data.key? :prepare
          root << build_element('stk:availability', data[:availability]) if data.key? :availability
          root << build_element('stk:handlingInformation', data[:handling_information]) if data.key? :handling_information
          if data.key? :related_files
            root << Stk::RelatedFilesType.new('relatedFiles', data[:related_files]).builder
          end
          if data.key? :related_links
            root << Stk::RelatedLinksType.new('relatedLinks', data[:related_links]).builder
          end
          root << build_element('stk:foreignName1', data[:foreign_name1]) if data.key? :foreign_name1
          root << build_element('stk:foreignNameComplement1', data[:foreign_name_complement1]) if data.key? :foreign_name_complement1
          root << build_element('stk:foreignName2', data[:foreign_name2]) if data.key? :foreign_name2
          root << build_element('stk:foreignNameComplement2', data[:foreign_name_complement2]) if data.key? :foreign_name_complement2
          root << build_element('stk:description', data[:description]) if data.key? :description
          root << build_element('stk:description2', data[:description2]) if data.key? :description2
          if data.key? :pictures
            root << Stk::PicturesType.new('pictures', data[:pictures]).builder
          end
          if data.key? :categories
            root << Stk::CategoriesType.new('categories', data[:categories]).builder
          end
          if data.key? :related_stocks
            root << Stk::RelatedStocksType.new('relatedStocks', data[:related_stocks]).builder
          end
          if data.key? :alternative_stocks
            root << Stk::AlternativeStocksType.new('alternativeStocks', data[:alternative_stocks]).builder
          end
          if data.key? :int_parameters
            root << Stk::IntParametersType.new('intParameters', data[:int_parameters]).builder
          end
          root << build_element('stk:note', data[:note]) if data.key? :note
          root << build_element('stk:markRecord', data[:mark_record]) if data.key? :mark_record
          if data.key? :labels
            root << Typ::LabelsType.new('labels', data[:labels]).builder
          end
          if data.key? :parameters
            root << Typ::ParametersType.new('parameters', data[:parameters]).builder
          end

          root
        end
      end
    end
  end
end