# Find the sum of all five-digit positive integers that

#-are square numbers
#-have all digits square
#-and are NOT ordered numbers.
#-Clarifications:

#-An ordered number is one whose digits are in an increasing sequence. For example,155  is an ordered number but 515 is not; 11235 is an ordered number but 51321 is not.
#-A square is one that can be obtained by multiplying a number by itself (in particular 0, 0 * 0  is a square).

def digits_square(arrnum)
  first_squares = [0,1,4,9]
  for i in arrnum
    if first_squares.include?(i.to_i) == false
      return false
    end
  end
  return true
end

def not_ordered(num)
  for i in (0..num.size - 2)
    if num[i].to_i > num[i + 1].to_i
      return true
    end
  end
  return false
end

def sum_conditions()
  a = 100 #the first number which, when squared, has five digits.
  z = 316 #the last number which, when squared, has five digits.
  five_elements_array = 4
  first_squares = ["0","1","4","9"] #these are all the squared number that can be expressed in a single digit; they are expressed in strings to avoid unecessary data conversions.
  conditions_met = []
  while a <= z #this loop is much more efficient than the interval 10000 --- 99999, and gives us all the squares.
    num_array = (a ** 2).to_s.split("")
    if digits_square(num_array)
      if not_ordered(num_array)
        conditions_met.push(a ** 2)
      end
    end
    a += 1
  end
  answer = 0
  for i in conditions_met
    answer += i
  end
  return answer
  return conditions_met
end

puts sum_conditions()

# => 313293
