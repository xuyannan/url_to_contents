require 'nokogiri'
require 'open-uri'

module UrlToContents
	  # Your code goes here...
	class Url
		# Get a Nokogiri::HTML::Document for the page we’re interested in...
		def initialize(url = 'http://www.google.com/search?q=sparklemotion')
			@doc = Nokogiri::HTML(open(url))
		end

		def which_site?(url)			
		end

		def prase
			@doc.css('#panel_share .item').each do |link|
			  puts link.content
			end

			####
			# Search for nodes by xpath
			@doc.xpath('//h3/a').each do |link|
			  puts link.content
			end

			####
			# Or mix and match.
			@doc.search('h3.r a.l', '//h3/a').each do |link|
			  puts link.content
			end
		end
	end
end