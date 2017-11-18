require 'nokogiri'

module SpecHelpers
  def xml_invoice(file)
    xml = Nokogiri::XML(File.open "./spec/fixtures/#{file}")

    xml.at_xpath('//inv:invoice').document.remove_namespaces!.children.first
  end
end
