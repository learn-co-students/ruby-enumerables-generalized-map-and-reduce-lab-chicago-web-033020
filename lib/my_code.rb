# Your Code Here
def map(array)
  array1 = []
  counter = 0
  while counter < array.size do
    array1.push(yield(array[counter]))
    counter += 1
end
array1
end

def reduce(array, starting_point=nil)
  if starting_point
    array1 = starting_point
    counter = 0
  else
    array1 = array[0]
    counter = 1
end
  while counter < array.length
    array1 = yield(array1, array[counter])
    counter += 1
end
array1
end