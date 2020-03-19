# Your Code Here
def map(source_array)
  index = 0
  new_array = []
  while index < source_array.length do
    new_array.push(yield(source_array[index]))
    index += 1
  end
  new_array
end

def reduce(array, sv=nil)
  if sv
    sum = sv
    index = 0
  else
    sum = array[0]
    index = 1
  end
  while index < array.length do 
    sum = yield(sum, array[index])
    index += 1 
  end
  sum
end