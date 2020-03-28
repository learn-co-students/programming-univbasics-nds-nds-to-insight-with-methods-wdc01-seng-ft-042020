$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pry'
# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
 total_gross = 0 
 row_index = 0 
 while row_index < director_data[:movies].length do 
   total_gross += director_data[:movies][row_index][:worldwide_gross]
   row_index += 1
 end 
total_gross 
end
 
# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  director_total = 0 
  row_index = 0 
  while row_index < nds.length do
    director_name = nds[row_index][:name]
    director_movies = nds[row_index][:movies]
    column_index = 0
    
    while column_index < director_movies.length do 
      director_total += director_movies[column_index][:worldwide_gross]
      column_index += 1 
    end 
    result[director_name] = director_total 
    director_total = 0 
    row_index += 1 
  end 
  result 
  
end
