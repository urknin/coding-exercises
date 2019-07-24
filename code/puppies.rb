#!/usr/bin/env ruby

# Build a scraper for a dog adoption website. This scraper should open the paws.html page and collect all baby female dogs on each page. The scraper
# should return the href sources for each matching dog. The DIRECTORY constant contains directory containing paws.html.
#
# Hint: You will likely want to use an HTML parser like Nokogiri and use the page's pagination to iterate each page.
#
class Puppies
  DIRECTORY = ::File.join(::File.dirname(__FILE__), '../data')

  def self.parse
  end
end
