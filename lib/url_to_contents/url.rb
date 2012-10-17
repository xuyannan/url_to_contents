require 'nokogiri'
require 'open-uri'

module UrlToContents

  class Url
    def initialize(url)
      @url = url
      @doc = Nokogiri::HTML(open(@url))
    end

    def which_site?
      "youku" if @url.include?('v.youku.com')
    end

    def doc
      @doc
    end

    def parse	
      UrlToContents::Parser.new(@doc).send which_site?
    end
  end

end
