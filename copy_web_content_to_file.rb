#Write a script that accesses a wikipedia page and copies it to an html file on your hard drive.
#Possible uses: proactively run script to save an article locally for reading when offline and unable to access the web. 
#Exercise taken from: http://ruby.bastardsbook.com/chapters/io/


require 'rubygems'
require 'rest-client'

wiki_url = "https://en.wikipedia.org/wiki/Bouldering"
wiki_local_filename = "bouldering.html"

File.open(wiki_local_filename, "w") do |file|
  file.write(RestClient.get(wiki_url))
end
