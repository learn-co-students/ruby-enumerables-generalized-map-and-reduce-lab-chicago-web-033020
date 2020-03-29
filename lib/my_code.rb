def map(yolo)
  newarray = []
  count = 0
  while count < yolo.length
    newarray.push(yield(yolo[count]))
    count += 1
  end
  newarray
end


def reduce(arr, startpt=nil)
  if startpt
   total = startpt
  count = 0
  else 
    total = arr[0]
    count = 1
  end
    while count < arr.length
    total = yield(total, arr[count])
  count += 1
  end
total
end