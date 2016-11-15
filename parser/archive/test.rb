require 'httparty'
require 'nokogiri'
require 'json'
require 'pry'
require 'csv'

page = HTTParty.get('http://localhost:3000/')

parse_page = Nokogiri::HTML(page)


tr= parse_page.css("#blocks4626").css("table").css("tr")

partic = []
CSV.open("myfile.csv", "w", {:col_sep => ";"}) do |csv|

  tr.map do |b|
    td0 = b.css("td")[0].text.gsub!(/[\n\t]/, '')
    td2 = b.css("td")[2].text.gsub!(/[\n\t]/, 'Ї')
    td3 = b.css("td")[3].text.gsub!(/[\n\t]/, '')
    td4 = b.css("td")[4].text.gsub!(/[\n\t]/, '')

    csv << [td0, td2, td3, td4]
  end
end




#Pry.start(binding)
