module Pohoda
  module Parsers
    module Stk
      class StockHeaderType
        include ParserCore::BaseParser

        def id
          at 'stk:id'
        end

        def id_attributes
          attributes_at 'stk:id'
        end

        def ext_id
          submodel_at(Typ::ExtIdType, 'stk:extId')
        end

        def stock_type
          at 'stk:stockType'
        end

        def stock_type_attributes
          attributes_at 'stk:stockType'
        end

        def code
          at 'stk:code'
        end

        def code_attributes
          attributes_at 'stk:code'
        end

        def ean
          at 'stk:EAN'
        end

        def ean_attributes
          attributes_at 'stk:EAN'
        end

        def plu
          at 'stk:PLU'
        end

        def plu_attributes
          attributes_at 'stk:PLU'
        end

        def is_sales
          at 'stk:isSales'
        end

        def is_sales_attributes
          attributes_at 'stk:isSales'
        end

        def is_serial_number
          at 'stk:isSerialNumber'
        end

        def is_serial_number_attributes
          attributes_at 'stk:isSerialNumber'
        end

        def is_internet
          at 'stk:isInternet'
        end

        def is_internet_attributes
          attributes_at 'stk:isInternet'
        end

        def is_batch
          at 'stk:isBatch'
        end

        def is_batch_attributes
          attributes_at 'stk:isBatch'
        end

        def purchasing_rate_vat
          at 'stk:purchasingRateVAT'
        end

        def purchasing_rate_vat_attributes
          attributes_at 'stk:purchasingRateVAT'
        end

        def selling_rate_vat
          at 'stk:sellingRateVAT'
        end

        def selling_rate_vat_attributes
          attributes_at 'stk:sellingRateVAT'
        end

        def name
          at 'stk:name'
        end

        def name_attributes
          attributes_at 'stk:name'
        end

        def name_complement
          at 'stk:nameComplement'
        end

        def name_complement_attributes
          attributes_at 'stk:nameComplement'
        end

        def unit
          at 'stk:unit'
        end

        def unit_attributes
          attributes_at 'stk:unit'
        end

        def unit2
          at 'stk:unit2'
        end

        def unit2_attributes
          attributes_at 'stk:unit2'
        end

        def unit3
          at 'stk:unit3'
        end

        def unit3_attributes
          attributes_at 'stk:unit3'
        end

        def coefficient2
          at 'stk:coefficient2'
        end

        def coefficient2_attributes
          attributes_at 'stk:coefficient2'
        end

        def coefficient3
          at 'stk:coefficient3'
        end

        def coefficient3_attributes
          attributes_at 'stk:coefficient3'
        end

        def storage
          submodel_at(Typ::RefTypeStorage, 'stk:storage')
        end

        def type_price
          submodel_at(Typ::RefType, 'stk:typePrice')
        end

        def weighted_purchase_price
          at 'stk:weightedPurchasePrice'
        end

        def weighted_purchase_price_attributes
          attributes_at 'stk:weightedPurchasePrice'
        end

        def purchasing_price
          at 'stk:purchasingPrice'
        end

        def purchasing_price_attributes
          attributes_at 'stk:purchasingPrice'
        end

        def selling_price
          at 'stk:sellingPrice'
        end

        def selling_price_attributes
          attributes_at 'stk:sellingPrice'
        end

        def limit_min
          at 'stk:limitMin'
        end

        def limit_min_attributes
          attributes_at 'stk:limitMin'
        end

        def limit_max
          at 'stk:limitMax'
        end

        def limit_max_attributes
          attributes_at 'stk:limitMax'
        end

        def mass
          at 'stk:mass'
        end

        def mass_attributes
          attributes_at 'stk:mass'
        end

        def volume
          at 'stk:volume'
        end

        def volume_attributes
          attributes_at 'stk:volume'
        end

        def count
          at 'stk:count'
        end

        def count_attributes
          attributes_at 'stk:count'
        end

        def count_received_orders
          at 'stk:countReceivedOrders'
        end

        def count_received_orders_attributes
          attributes_at 'stk:countReceivedOrders'
        end

        def reservation
          at 'stk:reservation'
        end

        def reservation_attributes
          attributes_at 'stk:reservation'
        end

        def supplier
          submodel_at(Typ::CompanyType, 'stk:supplier')
        end

        def order_name
          at 'stk:orderName'
        end

        def order_name_attributes
          attributes_at 'stk:orderName'
        end

        def order_quantity
          at 'stk:orderQuantity'
        end

        def order_quantity_attributes
          attributes_at 'stk:orderQuantity'
        end

        def count_issued_orders
          at 'stk:countIssuedOrders'
        end

        def count_issued_orders_attributes
          attributes_at 'stk:countIssuedOrders'
        end

        def reclamation
          at 'stk:reclamation'
        end

        def reclamation_attributes
          attributes_at 'stk:reclamation'
        end

        def short_name
          at 'stk:shortName'
        end

        def short_name_attributes
          attributes_at 'stk:shortName'
        end

        def type_rp
          submodel_at(Typ::RefType, 'stk:typeRP')
        end

        def guarantee_type
          at 'stk:guaranteeType'
        end

        def guarantee_type_attributes
          attributes_at 'stk:guaranteeType'
        end

        def guarantee
          at 'stk:guarantee'
        end

        def guarantee_attributes
          attributes_at 'stk:guarantee'
        end

        def producer
          at 'stk:producer'
        end

        def producer_attributes
          attributes_at 'stk:producer'
        end

        def unit_of_measure
          at 'stk:unitOfMeasure'
        end

        def unit_of_measure_attributes
          attributes_at 'stk:unitOfMeasure'
        end

        def coefficient_of_measure
          at 'stk:coefficientOfMeasure'
        end

        def coefficient_of_measure_attributes
          attributes_at 'stk:coefficientOfMeasure'
        end

        def eet_item
          at 'stk:EETItem'
        end

        def eet_item_attributes
          attributes_at 'stk:EETItem'
        end

        def dic_pp
          at 'stk:dicPP'
        end

        def dic_pp_attributes
          attributes_at 'stk:dicPP'
        end

        def yield
          at 'stk:yield'
        end

        def yield_attributes
          attributes_at 'stk:yield'
        end

        def cost
          at 'stk:cost'
        end

        def cost_attributes
          attributes_at 'stk:cost'
        end

        def classification_vat_receipt
          submodel_at(Typ::ClassificationVATType, 'stk:classificationVATReceipt')
        end

        def classification_kvdph_receipt
          submodel_at(Typ::RefType, 'stk:classificationKVDPHReceipt')
        end

        def classification_vat_issue
          submodel_at(Typ::ClassificationVATType, 'stk:classificationVATIssue')
        end

        def classification_kvdph_issue
          submodel_at(Typ::RefType, 'stk:classificationKVDPHIssue')
        end

        def class_of_stock
          at 'stk:classOfStock'
        end

        def class_of_stock_attributes
          attributes_at 'stk:classOfStock'
        end

        def acc
          at 'stk:acc'
        end

        def acc_attributes
          attributes_at 'stk:acc'
        end

        def type_service_moss
          submodel_at(Typ::MOSStype, 'stk:typeServiceMOSS')
        end

        def control_limit_tax_liability
          at 'stk:controlLimitTaxLiability'
        end

        def control_limit_tax_liability_attributes
          attributes_at 'stk:controlLimitTaxLiability'
        end

        def pdp
          at 'stk:PDP'
        end

        def pdp_attributes
          attributes_at 'stk:PDP'
        end

        def pd_pclassification_vat_issue
          submodel_at(Typ::ClassificationVATType, 'stk:PDPclassificationVATIssue')
        end

        def pd_pclassification_kvdph_issue
          submodel_at(Typ::RefType, 'stk:PDPclassificationKVDPHIssue')
        end

        def code_pdp
          at 'stk:CodePDP'
        end

        def code_pdp_attributes
          attributes_at 'stk:CodePDP'
        end

        def intrastat
          submodel_at(Stk::InstrastatType, 'stk:intrastat')
        end

        def news
          at 'stk:news'
        end

        def news_attributes
          attributes_at 'stk:news'
        end

        def clearance_sale
          at 'stk:clearanceSale'
        end

        def clearance_sale_attributes
          attributes_at 'stk:clearanceSale'
        end

        def sale
          at 'stk:sale'
        end

        def sale_attributes
          attributes_at 'stk:sale'
        end

        def recommended
          at 'stk:recommended'
        end

        def recommended_attributes
          attributes_at 'stk:recommended'
        end

        def discount
          at 'stk:discount'
        end

        def discount_attributes
          attributes_at 'stk:discount'
        end

        def prepare
          at 'stk:prepare'
        end

        def prepare_attributes
          attributes_at 'stk:prepare'
        end

        def availability
          at 'stk:availability'
        end

        def availability_attributes
          attributes_at 'stk:availability'
        end

        def handling_information
          at 'stk:handlingInformation'
        end

        def handling_information_attributes
          attributes_at 'stk:handlingInformation'
        end

        def related_files
          array_of_at(Stk::RelatedFileType, ['stk:relatedFiles', 'stk:relatedFile'])
        end

        def related_links
          array_of_at(Stk::RelatedLinkType, ['stk:relatedLinks', 'stk:relatedLink'])
        end

        def foreign_name1
          at 'stk:foreignName1'
        end

        def foreign_name1_attributes
          attributes_at 'stk:foreignName1'
        end

        def foreign_name_complement1
          at 'stk:foreignNameComplement1'
        end

        def foreign_name_complement1_attributes
          attributes_at 'stk:foreignNameComplement1'
        end

        def foreign_name2
          at 'stk:foreignName2'
        end

        def foreign_name2_attributes
          attributes_at 'stk:foreignName2'
        end

        def foreign_name_complement2
          at 'stk:foreignNameComplement2'
        end

        def foreign_name_complement2_attributes
          attributes_at 'stk:foreignNameComplement2'
        end

        def description
          at 'stk:description'
        end

        def description_attributes
          attributes_at 'stk:description'
        end

        def description2
          at 'stk:description2'
        end

        def description2_attributes
          attributes_at 'stk:description2'
        end

        def pictures
          array_of_at(Stk::PictureType, ['stk:pictures', 'stk:picture'])
        end

        def categories
          array_of_at(String, ['stk:categories', 'stk:idCategory'])
        end

        def related_stocks
          array_of_at(Typ::OrderStockItemType, ['stk:relatedStocks', 'stk:idStocks'])
        end

        def alternative_stocks
          array_of_at(Typ::OrderStockItemType, ['stk:alternativeStocks', 'stk:idStocks'])
        end

        def int_parameters
          array_of_at(Stk::IntParameterType, ['stk:intParameters', 'stk:intParameter'])
        end

        def note
          at 'stk:note'
        end

        def note_attributes
          attributes_at 'stk:note'
        end

        def mark_record
          at 'stk:markRecord'
        end

        def mark_record_attributes
          attributes_at 'stk:markRecord'
        end

        def labels
          array_of_at(Typ::LabelType, ['stk:labels', 'typ:label'])
        end

        def parameters
          array_of_at(Typ::ParameterDocType, ['stk:parameters', 'typ:parameter'])
        end

        def to_h
          hash = {}
          hash[:attributes] = attributes

          hash[:id] = id if has? 'stk:id'
          hash[:id_attributes] = id_attributes if has? 'stk:id'
          hash[:ext_id] = ext_id.to_h if has? 'stk:extId'
          hash[:stock_type] = stock_type if has? 'stk:stockType'
          hash[:stock_type_attributes] = stock_type_attributes if has? 'stk:stockType'
          hash[:code] = code if has? 'stk:code'
          hash[:code_attributes] = code_attributes if has? 'stk:code'
          hash[:ean] = ean if has? 'stk:EAN'
          hash[:ean_attributes] = ean_attributes if has? 'stk:EAN'
          hash[:plu] = plu if has? 'stk:PLU'
          hash[:plu_attributes] = plu_attributes if has? 'stk:PLU'
          hash[:is_sales] = is_sales if has? 'stk:isSales'
          hash[:is_sales_attributes] = is_sales_attributes if has? 'stk:isSales'
          hash[:is_serial_number] = is_serial_number if has? 'stk:isSerialNumber'
          hash[:is_serial_number_attributes] = is_serial_number_attributes if has? 'stk:isSerialNumber'
          hash[:is_internet] = is_internet if has? 'stk:isInternet'
          hash[:is_internet_attributes] = is_internet_attributes if has? 'stk:isInternet'
          hash[:is_batch] = is_batch if has? 'stk:isBatch'
          hash[:is_batch_attributes] = is_batch_attributes if has? 'stk:isBatch'
          hash[:purchasing_rate_vat] = purchasing_rate_vat if has? 'stk:purchasingRateVAT'
          hash[:purchasing_rate_vat_attributes] = purchasing_rate_vat_attributes if has? 'stk:purchasingRateVAT'
          hash[:selling_rate_vat] = selling_rate_vat if has? 'stk:sellingRateVAT'
          hash[:selling_rate_vat_attributes] = selling_rate_vat_attributes if has? 'stk:sellingRateVAT'
          hash[:name] = name if has? 'stk:name'
          hash[:name_attributes] = name_attributes if has? 'stk:name'
          hash[:name_complement] = name_complement if has? 'stk:nameComplement'
          hash[:name_complement_attributes] = name_complement_attributes if has? 'stk:nameComplement'
          hash[:unit] = unit if has? 'stk:unit'
          hash[:unit_attributes] = unit_attributes if has? 'stk:unit'
          hash[:unit2] = unit2 if has? 'stk:unit2'
          hash[:unit2_attributes] = unit2_attributes if has? 'stk:unit2'
          hash[:unit3] = unit3 if has? 'stk:unit3'
          hash[:unit3_attributes] = unit3_attributes if has? 'stk:unit3'
          hash[:coefficient2] = coefficient2 if has? 'stk:coefficient2'
          hash[:coefficient2_attributes] = coefficient2_attributes if has? 'stk:coefficient2'
          hash[:coefficient3] = coefficient3 if has? 'stk:coefficient3'
          hash[:coefficient3_attributes] = coefficient3_attributes if has? 'stk:coefficient3'
          hash[:storage] = storage.to_h if has? 'stk:storage'
          hash[:type_price] = type_price.to_h if has? 'stk:typePrice'
          hash[:weighted_purchase_price] = weighted_purchase_price if has? 'stk:weightedPurchasePrice'
          hash[:weighted_purchase_price_attributes] = weighted_purchase_price_attributes if has? 'stk:weightedPurchasePrice'
          hash[:purchasing_price] = purchasing_price if has? 'stk:purchasingPrice'
          hash[:purchasing_price_attributes] = purchasing_price_attributes if has? 'stk:purchasingPrice'
          hash[:selling_price] = selling_price if has? 'stk:sellingPrice'
          hash[:selling_price_attributes] = selling_price_attributes if has? 'stk:sellingPrice'
          hash[:limit_min] = limit_min if has? 'stk:limitMin'
          hash[:limit_min_attributes] = limit_min_attributes if has? 'stk:limitMin'
          hash[:limit_max] = limit_max if has? 'stk:limitMax'
          hash[:limit_max_attributes] = limit_max_attributes if has? 'stk:limitMax'
          hash[:mass] = mass if has? 'stk:mass'
          hash[:mass_attributes] = mass_attributes if has? 'stk:mass'
          hash[:volume] = volume if has? 'stk:volume'
          hash[:volume_attributes] = volume_attributes if has? 'stk:volume'
          hash[:count] = count if has? 'stk:count'
          hash[:count_attributes] = count_attributes if has? 'stk:count'
          hash[:count_received_orders] = count_received_orders if has? 'stk:countReceivedOrders'
          hash[:count_received_orders_attributes] = count_received_orders_attributes if has? 'stk:countReceivedOrders'
          hash[:reservation] = reservation if has? 'stk:reservation'
          hash[:reservation_attributes] = reservation_attributes if has? 'stk:reservation'
          hash[:supplier] = supplier.to_h if has? 'stk:supplier'
          hash[:order_name] = order_name if has? 'stk:orderName'
          hash[:order_name_attributes] = order_name_attributes if has? 'stk:orderName'
          hash[:order_quantity] = order_quantity if has? 'stk:orderQuantity'
          hash[:order_quantity_attributes] = order_quantity_attributes if has? 'stk:orderQuantity'
          hash[:count_issued_orders] = count_issued_orders if has? 'stk:countIssuedOrders'
          hash[:count_issued_orders_attributes] = count_issued_orders_attributes if has? 'stk:countIssuedOrders'
          hash[:reclamation] = reclamation if has? 'stk:reclamation'
          hash[:reclamation_attributes] = reclamation_attributes if has? 'stk:reclamation'
          hash[:short_name] = short_name if has? 'stk:shortName'
          hash[:short_name_attributes] = short_name_attributes if has? 'stk:shortName'
          hash[:type_rp] = type_rp.to_h if has? 'stk:typeRP'
          hash[:guarantee_type] = guarantee_type if has? 'stk:guaranteeType'
          hash[:guarantee_type_attributes] = guarantee_type_attributes if has? 'stk:guaranteeType'
          hash[:guarantee] = guarantee if has? 'stk:guarantee'
          hash[:guarantee_attributes] = guarantee_attributes if has? 'stk:guarantee'
          hash[:producer] = producer if has? 'stk:producer'
          hash[:producer_attributes] = producer_attributes if has? 'stk:producer'
          hash[:unit_of_measure] = unit_of_measure if has? 'stk:unitOfMeasure'
          hash[:unit_of_measure_attributes] = unit_of_measure_attributes if has? 'stk:unitOfMeasure'
          hash[:coefficient_of_measure] = coefficient_of_measure if has? 'stk:coefficientOfMeasure'
          hash[:coefficient_of_measure_attributes] = coefficient_of_measure_attributes if has? 'stk:coefficientOfMeasure'
          hash[:eet_item] = eet_item if has? 'stk:EETItem'
          hash[:eet_item_attributes] = eet_item_attributes if has? 'stk:EETItem'
          hash[:dic_pp] = dic_pp if has? 'stk:dicPP'
          hash[:dic_pp_attributes] = dic_pp_attributes if has? 'stk:dicPP'
          hash[:yield] = yield if has? 'stk:yield'
          hash[:yield_attributes] = yield_attributes if has? 'stk:yield'
          hash[:cost] = cost if has? 'stk:cost'
          hash[:cost_attributes] = cost_attributes if has? 'stk:cost'
          hash[:classification_vat_receipt] = classification_vat_receipt.to_h if has? 'stk:classificationVATReceipt'
          hash[:classification_kvdph_receipt] = classification_kvdph_receipt.to_h if has? 'stk:classificationKVDPHReceipt'
          hash[:classification_vat_issue] = classification_vat_issue.to_h if has? 'stk:classificationVATIssue'
          hash[:classification_kvdph_issue] = classification_kvdph_issue.to_h if has? 'stk:classificationKVDPHIssue'
          hash[:class_of_stock] = class_of_stock if has? 'stk:classOfStock'
          hash[:class_of_stock_attributes] = class_of_stock_attributes if has? 'stk:classOfStock'
          hash[:acc] = acc if has? 'stk:acc'
          hash[:acc_attributes] = acc_attributes if has? 'stk:acc'
          hash[:type_service_moss] = type_service_moss.to_h if has? 'stk:typeServiceMOSS'
          hash[:control_limit_tax_liability] = control_limit_tax_liability if has? 'stk:controlLimitTaxLiability'
          hash[:control_limit_tax_liability_attributes] = control_limit_tax_liability_attributes if has? 'stk:controlLimitTaxLiability'
          hash[:pdp] = pdp if has? 'stk:PDP'
          hash[:pdp_attributes] = pdp_attributes if has? 'stk:PDP'
          hash[:pd_pclassification_vat_issue] = pd_pclassification_vat_issue.to_h if has? 'stk:PDPclassificationVATIssue'
          hash[:pd_pclassification_kvdph_issue] = pd_pclassification_kvdph_issue.to_h if has? 'stk:PDPclassificationKVDPHIssue'
          hash[:code_pdp] = code_pdp if has? 'stk:CodePDP'
          hash[:code_pdp_attributes] = code_pdp_attributes if has? 'stk:CodePDP'
          hash[:intrastat] = intrastat.to_h if has? 'stk:intrastat'
          hash[:news] = news if has? 'stk:news'
          hash[:news_attributes] = news_attributes if has? 'stk:news'
          hash[:clearance_sale] = clearance_sale if has? 'stk:clearanceSale'
          hash[:clearance_sale_attributes] = clearance_sale_attributes if has? 'stk:clearanceSale'
          hash[:sale] = sale if has? 'stk:sale'
          hash[:sale_attributes] = sale_attributes if has? 'stk:sale'
          hash[:recommended] = recommended if has? 'stk:recommended'
          hash[:recommended_attributes] = recommended_attributes if has? 'stk:recommended'
          hash[:discount] = discount if has? 'stk:discount'
          hash[:discount_attributes] = discount_attributes if has? 'stk:discount'
          hash[:prepare] = prepare if has? 'stk:prepare'
          hash[:prepare_attributes] = prepare_attributes if has? 'stk:prepare'
          hash[:availability] = availability if has? 'stk:availability'
          hash[:availability_attributes] = availability_attributes if has? 'stk:availability'
          hash[:handling_information] = handling_information if has? 'stk:handlingInformation'
          hash[:handling_information_attributes] = handling_information_attributes if has? 'stk:handlingInformation'
          hash[:related_files] = related_files.map(&:to_h) if has? 'stk:relatedFiles'
          hash[:related_links] = related_links.map(&:to_h) if has? 'stk:relatedLinks'
          hash[:foreign_name1] = foreign_name1 if has? 'stk:foreignName1'
          hash[:foreign_name1_attributes] = foreign_name1_attributes if has? 'stk:foreignName1'
          hash[:foreign_name_complement1] = foreign_name_complement1 if has? 'stk:foreignNameComplement1'
          hash[:foreign_name_complement1_attributes] = foreign_name_complement1_attributes if has? 'stk:foreignNameComplement1'
          hash[:foreign_name2] = foreign_name2 if has? 'stk:foreignName2'
          hash[:foreign_name2_attributes] = foreign_name2_attributes if has? 'stk:foreignName2'
          hash[:foreign_name_complement2] = foreign_name_complement2 if has? 'stk:foreignNameComplement2'
          hash[:foreign_name_complement2_attributes] = foreign_name_complement2_attributes if has? 'stk:foreignNameComplement2'
          hash[:description] = description if has? 'stk:description'
          hash[:description_attributes] = description_attributes if has? 'stk:description'
          hash[:description2] = description2 if has? 'stk:description2'
          hash[:description2_attributes] = description2_attributes if has? 'stk:description2'
          hash[:pictures] = pictures.map(&:to_h) if has? 'stk:pictures'
          hash[:categories] = categories if has? 'stk:categories'
          hash[:related_stocks] = related_stocks.map(&:to_h) if has? 'stk:relatedStocks'
          hash[:alternative_stocks] = alternative_stocks.map(&:to_h) if has? 'stk:alternativeStocks'
          hash[:int_parameters] = int_parameters.map(&:to_h) if has? 'stk:intParameters'
          hash[:note] = note if has? 'stk:note'
          hash[:note_attributes] = note_attributes if has? 'stk:note'
          hash[:mark_record] = mark_record if has? 'stk:markRecord'
          hash[:mark_record_attributes] = mark_record_attributes if has? 'stk:markRecord'
          hash[:labels] = labels.map(&:to_h) if has? 'stk:labels'
          hash[:parameters] = parameters.map(&:to_h) if has? 'stk:parameters'

          hash
        end
      end
    end
  end
end