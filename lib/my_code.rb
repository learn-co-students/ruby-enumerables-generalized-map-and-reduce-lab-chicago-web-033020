#map returns a new array of manipulated elements
def map(source_array)
#Inside of this method,we want to pass each elements from array to
#a block that will be called on map method, we can do that by calling YIELD and passing in each elements
newAr=[]
i=0
  while i<source_array.length do
    newAr.push(yield(source_array[i]))
    i+=1
  end
  newAr
end
######################
#Your implementation should expect a source array and optionally a starting value.
#All the tests will pass an Array and sometimes, a starting point.
def reduce(source_array,starting_point=nil)#这样就能使它optional
  if starting_point
    sum=starting_point
    i=0
  else
    sum=source_array[0]
    i=1#since we are dealing with 1st position array[0] already
  end

  while i<source_array.length
  sum=yield(sum,source_array[i])
  i+= 1
  end
  sum
end
