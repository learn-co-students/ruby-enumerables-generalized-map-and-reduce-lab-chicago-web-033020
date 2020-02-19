def map(array)
  new_array = []
  index = 0 
  while index < array.length do 
    
    new_array << yield(array[index])
    index += 1
    
  end 
  new_array
end


def reduce(array,start=nil)
  if start
    total = start 
    i = 0 
  else
    total = array[0]
    i = 1 
  end 
  while i < array.length do 
    total = yield(total, array[i])
    i += 1 
  end 
    total 
    
    
end 
