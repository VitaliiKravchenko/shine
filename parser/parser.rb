require 'httparty'
require 'nokogiri'
require 'json'
require 'pry'
require 'csv'

page = HTTParty.get('http://www.intercharm.ru/autumn/InterCHARM-2016/Companies/Exhibitors/#')

parse_page = Nokogiri::HTML(page)


#parse_page = parse_page.css(".block7").css("div").css("#shstyle1").css("shstylle").css("#blocks4626").css("tbody").css("tr")

#parse_page = parse_page.css("#blocks4626").css("table").css("tr").css("td").text
#td= parse_page.css("#blocks4626").css("table").css("tr")[2].css("td")[4].text.gsub!(/[\n\t]/, '')



Pry.start(binding)
