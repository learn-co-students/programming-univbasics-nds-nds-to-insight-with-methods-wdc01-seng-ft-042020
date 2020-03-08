$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)

    gross = 0
    i = 0
    
    while (i < director_data[:movies].length()) do
    
      gross += director_data[:movies][i][:worldwide_gross]
      i += 1
      
    end
    
    return gross
    
  end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
 
   count = 0
    while (count < nds.length()) do
      gross = gross_for_director(nds[count])
      name = nds[count][:name]
      result[name] = gross
      count += 1
    end
    
  return result
  
end
