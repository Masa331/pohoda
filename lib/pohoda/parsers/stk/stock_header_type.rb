module Pohoda
  module Parsers
    module Stk
      class StockHeaderType
        include ParserCore::BaseParser

        def id
          at 'stk:id'
        end

        def ext_id
          submodel_at(Typ::ExtIdType, 'stk:extId')
        end

        def stock_type
          at 'stk:stockType'
        end

        def code
          at 'stk:code'
        end

        def ean
          at 'stk:EAN'
        end

        def plu
          at 'stk:PLU'
        end

        def is_sales
          at 'stk:isSales'
        end

        def is_serial_number
          at 'stk:isSerialNumber'
        end

        def is_internet
          at 'stk:isInternet'
        end

        def is_batch
          at 'stk:isBatch'
        end

        def purchasing_rate_vat
          at 'stk:purchasingRateVAT'
        end

        def selling_rate_vat
          at 'stk:sellingRateVAT'
        end

        def name
          at 'stk:name'
        end

        def name_complement
          at 'stk:nameComplement'
        end

        def unit
          at 'stk:unit'
        end

        def unit2
          at 'stk:unit2'
        end

        def unit3
          at 'stk:unit3'
        end

        def coefficient2
          at 'stk:coefficient2'
        end

        def coefficient3
          at 'stk:coefficient3'
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

        def purchasing_price
          at 'stk:purchasingPrice'
        end

        def selling_price
          at 'stk:sellingPrice'
        end

        def limit_min
          at 'stk:limitMin'
        end

        def limit_max
          at 'stk:limitMax'
        end

        def mass
          at 'stk:mass'
        end

        def volume
          at 'stk:volume'
        end

        def count
          at 'stk:count'
        end

        def count_received_orders
          at 'stk:countReceivedOrders'
        end

        def reservation
          at 'stk:reservation'
        end

        def supplier
          submodel_at(Typ::CompanyType, 'stk:supplier')
        end

        def order_name
          at 'stk:orderName'
        end

        def order_quantity
          at 'stk:orderQuantity'
        end

        def count_issued_orders
          at 'stk:countIssuedOrders'
        end

        def reclamation
          at 'stk:reclamation'
        end

        def short_name
          at 'stk:shortName'
        end

        def type_rp
          submodel_at(Typ::RefType, 'stk:typeRP')
        end

        def guarantee_type
          at 'stk:guaranteeType'
        end

        def guarantee
          at 'stk:guarantee'
        end

        def producer
          at 'stk:producer'
        end

        def eet_item
          at 'stk:EETItem'
        end

        def dic_pp
          at 'stk:dicPP'
        end

        def yield
          at 'stk:yield'
        end

        def cost
          at 'stk:cost'
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

        def acc
          at 'stk:acc'
        end

        def type_service_moss
          submodel_at(Typ::MOSStype, 'stk:typeServiceMOSS')
        end

        def control_limit_tax_liability
          at 'stk:controlLimitTaxLiability'
        end

        def intrastat
          submodel_at(Stk::InstrastatType, 'stk:intrastat')
        end

        def news
          at 'stk:news'
        end

        def clearance_sale
          at 'stk:clearanceSale'
        end

        def sale
          at 'stk:sale'
        end

        def recommended
          at 'stk:recommended'
        end

        def discount
          at 'stk:discount'
        end

        def prepare
          at 'stk:prepare'
        end

        def availability
          at 'stk:availability'
        end

        def handling_information
          at 'stk:handlingInformation'
        end

        def related_files
          submodel_at(Stk::RelatedFilesType, 'stk:relatedFiles')
        end

        def related_links
          submodel_at(Stk::RelatedLinksType, 'stk:relatedLinks')
        end

        def foreign_name1
          at 'stk:foreignName1'
        end

        def foreign_name_complement1
          at 'stk:foreignNameComplement1'
        end

        def foreign_name2
          at 'stk:foreignName2'
        end

        def foreign_name_complement2
          at 'stk:foreignNameComplement2'
        end

        def description
          at 'stk:description'
        end

        def description2
          at 'stk:description2'
        end

        def pictures
          submodel_at(Stk::PicturesType, 'stk:pictures')
        end

        def categories
          submodel_at(Stk::CategoriesType, 'stk:categories')
        end

        def related_stocks
          submodel_at(Stk::RelatedStocksType, 'stk:relatedStocks')
        end

        def alternative_stocks
          submodel_at(Stk::AlternativeStocksType, 'stk:alternativeStocks')
        end

        def int_parameters
          submodel_at(Stk::IntParametersType, 'stk:intParameters')
        end

        def note
          at 'stk:note'
        end

        def mark_record
          at 'stk:markRecord'
        end

        def labels
          submodel_at(Typ::LabelsType, 'stk:labels')
        end

        def parameters
          submodel_at(Typ::ParametersType, 'stk:parameters')
        end

        def to_h_with_attrs
          hash = ParserCore::HashWithAttributes.new({}, attributes)

          hash[:id] = id if has? 'stk:id'
          hash[:ext_id] = ext_id.to_h_with_attrs if has? 'stk:extId'
          hash[:stock_type] = stock_type if has? 'stk:stockType'
          hash[:code] = code if has? 'stk:code'
          hash[:ean] = ean if has? 'stk:EAN'
          hash[:plu] = plu if has? 'stk:PLU'
          hash[:is_sales] = is_sales if has? 'stk:isSales'
          hash[:is_serial_number] = is_serial_number if has? 'stk:isSerialNumber'
          hash[:is_internet] = is_internet if has? 'stk:isInternet'
          hash[:is_batch] = is_batch if has? 'stk:isBatch'
          hash[:purchasing_rate_vat] = purchasing_rate_vat if has? 'stk:purchasingRateVAT'
          hash[:selling_rate_vat] = selling_rate_vat if has? 'stk:sellingRateVAT'
          hash[:name] = name if has? 'stk:name'
          hash[:name_complement] = name_complement if has? 'stk:nameComplement'
          hash[:unit] = unit if has? 'stk:unit'
          hash[:unit2] = unit2 if has? 'stk:unit2'
          hash[:unit3] = unit3 if has? 'stk:unit3'
          hash[:coefficient2] = coefficient2 if has? 'stk:coefficient2'
          hash[:coefficient3] = coefficient3 if has? 'stk:coefficient3'
          hash[:storage] = storage.to_h_with_attrs if has? 'stk:storage'
          hash[:type_price] = type_price.to_h_with_attrs if has? 'stk:typePrice'
          hash[:weighted_purchase_price] = weighted_purchase_price if has? 'stk:weightedPurchasePrice'
          hash[:purchasing_price] = purchasing_price if has? 'stk:purchasingPrice'
          hash[:selling_price] = selling_price if has? 'stk:sellingPrice'
          hash[:limit_min] = limit_min if has? 'stk:limitMin'
          hash[:limit_max] = limit_max if has? 'stk:limitMax'
          hash[:mass] = mass if has? 'stk:mass'
          hash[:volume] = volume if has? 'stk:volume'
          hash[:count] = count if has? 'stk:count'
          hash[:count_received_orders] = count_received_orders if has? 'stk:countReceivedOrders'
          hash[:reservation] = reservation if has? 'stk:reservation'
          hash[:supplier] = supplier.to_h_with_attrs if has? 'stk:supplier'
          hash[:order_name] = order_name if has? 'stk:orderName'
          hash[:order_quantity] = order_quantity if has? 'stk:orderQuantity'
          hash[:count_issued_orders] = count_issued_orders if has? 'stk:countIssuedOrders'
          hash[:reclamation] = reclamation if has? 'stk:reclamation'
          hash[:short_name] = short_name if has? 'stk:shortName'
          hash[:type_rp] = type_rp.to_h_with_attrs if has? 'stk:typeRP'
          hash[:guarantee_type] = guarantee_type if has? 'stk:guaranteeType'
          hash[:guarantee] = guarantee if has? 'stk:guarantee'
          hash[:producer] = producer if has? 'stk:producer'
          hash[:eet_item] = eet_item if has? 'stk:EETItem'
          hash[:dic_pp] = dic_pp if has? 'stk:dicPP'
          hash[:yield] = yield if has? 'stk:yield'
          hash[:cost] = cost if has? 'stk:cost'
          hash[:classification_vat_receipt] = classification_vat_receipt.to_h_with_attrs if has? 'stk:classificationVATReceipt'
          hash[:classification_kvdph_receipt] = classification_kvdph_receipt.to_h_with_attrs if has? 'stk:classificationKVDPHReceipt'
          hash[:classification_vat_issue] = classification_vat_issue.to_h_with_attrs if has? 'stk:classificationVATIssue'
          hash[:classification_kvdph_issue] = classification_kvdph_issue.to_h_with_attrs if has? 'stk:classificationKVDPHIssue'
          hash[:class_of_stock] = class_of_stock if has? 'stk:classOfStock'
          hash[:acc] = acc if has? 'stk:acc'
          hash[:type_service_moss] = type_service_moss.to_h_with_attrs if has? 'stk:typeServiceMOSS'
          hash[:control_limit_tax_liability] = control_limit_tax_liability if has? 'stk:controlLimitTaxLiability'
          hash[:intrastat] = intrastat.to_h_with_attrs if has? 'stk:intrastat'
          hash[:news] = news if has? 'stk:news'
          hash[:clearance_sale] = clearance_sale if has? 'stk:clearanceSale'
          hash[:sale] = sale if has? 'stk:sale'
          hash[:recommended] = recommended if has? 'stk:recommended'
          hash[:discount] = discount if has? 'stk:discount'
          hash[:prepare] = prepare if has? 'stk:prepare'
          hash[:availability] = availability if has? 'stk:availability'
          hash[:handling_information] = handling_information if has? 'stk:handlingInformation'
          hash[:related_files] = related_files.to_h_with_attrs if has? 'stk:relatedFiles'
          hash[:related_links] = related_links.to_h_with_attrs if has? 'stk:relatedLinks'
          hash[:foreign_name1] = foreign_name1 if has? 'stk:foreignName1'
          hash[:foreign_name_complement1] = foreign_name_complement1 if has? 'stk:foreignNameComplement1'
          hash[:foreign_name2] = foreign_name2 if has? 'stk:foreignName2'
          hash[:foreign_name_complement2] = foreign_name_complement2 if has? 'stk:foreignNameComplement2'
          hash[:description] = description if has? 'stk:description'
          hash[:description2] = description2 if has? 'stk:description2'
          hash[:pictures] = pictures.to_h_with_attrs if has? 'stk:pictures'
          hash[:categories] = categories.to_h_with_attrs if has? 'stk:categories'
          hash[:related_stocks] = related_stocks.to_h_with_attrs if has? 'stk:relatedStocks'
          hash[:alternative_stocks] = alternative_stocks.to_h_with_attrs if has? 'stk:alternativeStocks'
          hash[:int_parameters] = int_parameters.to_h_with_attrs if has? 'stk:intParameters'
          hash[:note] = note if has? 'stk:note'
          hash[:mark_record] = mark_record if has? 'stk:markRecord'
          hash[:labels] = labels.to_h_with_attrs if has? 'stk:labels'
          hash[:parameters] = parameters.to_h_with_attrs if has? 'stk:parameters'

          hash
        end
      end
    end
  end
end