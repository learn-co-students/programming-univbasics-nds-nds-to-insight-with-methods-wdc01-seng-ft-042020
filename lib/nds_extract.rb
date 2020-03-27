$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  #director_data is a hash. {name: string, movies: [{:title, :studio, :worldwide_gross, :release_year}, . . . , {} ] 
  total_gross = 0
  movie_index = 0
  while movie_index < director_data[:movies].length do
    total_gross += director_data[:movies][movie_index][:worldwide_gross]
    movie_index += 1
  end
  return total_gross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  #nds is an array of director hashes. 
  array_index = 0
  result = {}
  while array_index < nds.length do
    result[nds[array_index][:name]] = gross_for_director(nds[array_index])
    array_index += 1
  end
  return result
  
end

