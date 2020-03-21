$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  directors_index = 0
  
  while directors_index < director_data.length do
    #p nds[directors_index]
    curr_director = director_data[directors_index]
    curr_director[:movies]
    dir_movies = curr_director[:movies]
    dir_total = 0
    movies_index = 0
    
    while movies_index < dir_movies.length do
      dir_total += dir_movies[movies_index][:worldwide_gross]
      movies_index += 1
    end
    
    dir_name = directors_index[directors_index][:name]
    directors_index += 1
    dir_total
  end
  
  p result
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  nil
end
