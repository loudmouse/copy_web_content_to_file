require 'rubygems'
require 'rest-client'

wiki_url = "https://en.wikipedia.org/wiki/Bouldering"
wiki_local_filename = "bouldering.html"

File.open(wiki_local_filename, "w") do |file|
  file.write(RestClient.get(wiki_url))
end
