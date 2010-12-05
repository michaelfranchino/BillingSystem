require 'open-uri'
require 'nokogiri'

url = "http://msn.foxsports.com/nfl/scores"
doc = Nokogiri::HTML(open(url))

doc.css(".sbScoreboxTeamAway").each do |t|
  puts t.content
end