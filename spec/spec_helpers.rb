require 'nokogiri'

module SpecHelpers
  def xml_invoice(file)
    Nokogiri::XML(File.open "./spec/fixtures/#{file}").xpath('//inv:invoice')
  end
end
