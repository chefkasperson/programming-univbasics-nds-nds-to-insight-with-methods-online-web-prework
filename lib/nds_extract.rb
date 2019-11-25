require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
    count = 0
  counter = 0
  ss = 0 
  while counter < nds.length do
    name = nds[counter][:name]
  while count < nds[counter][:movies].length do
  ss += nds[counter][:movies][count][:worldwide_gross]
  count += 1
end 
  total = {name => ss}
  result = result.merge!(total)
  ss = 0
  count = 0
  counter += 1
end
puts result
return result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
    count = 0
    ss = 0
    name = directors_database[0][:name]
  while count < director_data[0][:movies].length do
  ss += director_data[0][:movies][count][:worldwide_gross]
  count += 1
end 
  total = {name => ss}
  result = result.merge!(total)
puts result
return result
end
