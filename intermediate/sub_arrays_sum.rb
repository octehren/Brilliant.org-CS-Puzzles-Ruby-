#Given an array and a number t, write a function that determines if there exists a sub-array whose sum is t.

# Which of the below arrays contains a sub-array whose sum is 316?

a = [61, 6, 39, 29, 30, 72, 98, 36, 42, 66, 24, 58, 13, 16, 73]

b = [87, 78, 4, 10, 48, 43, 33, 70, 21, 18, 75, 66, 39, 80, 87]

c = [82, 72, 39, 67, 65, 93, 28, 2, 89, 39, 68, 29, 61, 14, 98]

d = [45, 5, 14, 75, 100, 37, 98, 64, 90, 52, 66, 30, 18, 89, 19] 

def find_sum(array,num)
  for starting_index in (0..array.size-2)
    sub_array_sum = 0
    this_index = starting_index + 1
    sub_array_sum += array[starting_index]
    while this_index <= array.size - 1
      sub_array_sum += array[this_index]
      break if sub_array_sum > num
      if sub_array_sum == num
        return true
      end
    end
  end
end
