require 'nokogiri'
require "pohoda/version"
require "pohoda/data_pack_type"
require "pohoda/response_pack_type"

module Pohoda
  def self.parse(raw)
    xml = Nokogiri::XML(raw).remove_namespaces!

    data_pack = xml.at_xpath('//dataPack')
    return DataPackType.new(data_pack) if data_pack

    ResponsePackType.new(xml.at_xpath('//responsePack'))
  end
end
