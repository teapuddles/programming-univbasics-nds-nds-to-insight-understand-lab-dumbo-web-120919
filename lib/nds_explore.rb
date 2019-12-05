$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'
# Call the method directors_database to retrieve the NDS
require "pry"
def pretty_print_nds(nds)
  nds = directors_database
return pp nds
end

def print_first_directors_movie_titles
 first = directors_database[0]
 i = 0
 while i < first[:movies].length do
   movie = first[:movies][i]
   binding.pry
   puts movie[:title]
   i += 1 
 end
end
