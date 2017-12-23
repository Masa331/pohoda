require 'ox'
require 'pohoda/version'
require 'pohoda/data_pack_type'
require 'pohoda/response_pack_type'

module Pohoda
  def self.parse(raw)
    hash = Ox.load(raw, mode: :hash_no_attrs)

    if hash.key? :'dat:dataPack'
      DataPackType.new(hash[:'dat:dataPack'])
    elsif hash.key? :'rsp:responsePack'
      ResponsePackType.new(hash[:'rsp:responsePack'])
    end
  end
end
