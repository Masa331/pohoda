require 'ox'
require "pohoda/version"
require "pohoda/data_pack_type"
require "pohoda/response_pack_type"

module Pohoda
  def self.parse(raw)
    xml = Ox.load(raw, mode: :hash_no_attrs)

    data_pack = xml['dat:dataPack'.to_sym]
    return DataPackType.new(data_pack) if data_pack

    ResponsePackType.new(xml['rsp:responsePack'.to_sym])
  end
end
