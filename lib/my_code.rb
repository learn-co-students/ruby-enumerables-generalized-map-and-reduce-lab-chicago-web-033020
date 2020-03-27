# Your Code Here
def map(array)
  new_array = []
  counter = 0
  while counter < array.size do
    new_array.push(yield(array[counter]))
    counter += 1
  end
  new_array
  end


def reduce(array, starting_point=nil)
  if starting_point
    new_a = starting_point
    counter = 0
  else
    new_a = array[0]
    counter = 1
  end
  while counter < array.length
    new_a = yield(new_a, array[counter])
    counter += 1
  end
  new_a
end
