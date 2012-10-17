#encoding: utf-8

module UrlToContents

  class Parser
    def initialize(doc)
      @doc = doc
    end
    
    def youku
      @doc.css('#panel_share > .panel_con > .p1 > .item').each do |u|
        return u.xpath('input').attr('value').value  if u.css('.label').children.text  == "flash地址: "
      end		
    end
  end
	
end
