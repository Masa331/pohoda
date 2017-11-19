require 'nokogiri'
require "pohoda/version"
require "pohoda/data_pack_type"

module Pohoda
  def self.parse(raw)
    xml = Nokogiri::XML(raw).remove_namespaces!.at_xpath('//dataPack')

    DataPackType.new(xml)
  end
end
