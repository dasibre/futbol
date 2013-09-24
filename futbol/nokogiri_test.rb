require "rubygems"
require "nokogiri"
require "open-uri"

url = "http://espnfc.com/team/squad?id=359&cc=5901"
doc = Nokogiri::HTML(open(url))
puts doc.at_css("title").text
doc.css("#statsBody_1, a").each do |item|
	puts item.path
end



Feature: Adding
  As a math student i want to add numbers

  #Scenario: Add two numbers
  # Given the input "2+2"
  # When the calculator is run
  # Then the output should be "4"
 
  Scenario Outline: Add two numbers
    Given the input "<input>"
    When the calculator is run
    Then the output should be "<output>"

    Examples:
      | input | output |
      | 2+2   | 4      |
      | 98+1  | 99     |