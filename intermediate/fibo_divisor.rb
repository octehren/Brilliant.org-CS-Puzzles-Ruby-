# Find the sum of all the numbers less than 1 billion which appear in the fibonacci sequence that are divisible by 3.

def fibonacci(num) #this method returns an array containing the first "num" terms of the fibonacci sequence.
  init = 2
  a = 1
  b = 1
  c = 0
  fibo_array = [1,1]
  while init < num
    init+=1
    c = a + b
    fibo_array.push(c)
    b = a
    a = c
  end
  return fibo_array
end

term = 3

while fibonacci(term)[-1].to_s.size < 10 #1 billion has 10 digits.
  term += 1
end

total_sum = 0

fibonacci(term-1).each { |n| total_sum += n if (n % 3) == 0 }

puts total_sum

# =>  => 821223648
