def bubble_sort(array)
  iterations = array.length() - 1
  for i in (1..iterations)
    for index in (0..iterations - 1) do
      if array[index] > array[index + 1]
        temp = array[index]
        array[index] = array[index + 1]
        array[index + 1] = temp
      end
    end
  end
  return array
end
