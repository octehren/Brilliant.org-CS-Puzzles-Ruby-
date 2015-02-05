#What is the sum of the first four non-negative numbers with the following property: the number is equal to the sum of the factorials of its digits.
#For instance, 23 is NOT such a number, since 2!+3! = 2 + 6 = 8, which is not equal to 23.

def factorial(n): # returns the factorial of that number.
      if (n == 0):
          return 1
      else:
          factorial = 1
          for i in range(1,n+1):
                  factorial *= i
          return factorial

factorial_digits = {}
for i in range(0,10):
   factorial_digits[i] = factorial(i)
# factorial_digits contains the factorial value for each digit with its origin as a key

def corresponds_to_sum_of_factorial_digits(n):
    digits = list(str(n))
    summed = 0
    for i in digits:
        summed += factorial_digits[int(i)]
    if (summed == n):
        return True
    return False
    # checks whether or not the condition specified on the exercise is met.

final_numbers = [] #numbers which follow the condition specified.
#factorial_digits1 = factorial_digits; maybe put a recursive loop here?
#del factorial_digits1[0]

# the sum of the factorials for 0 to 9 equals 409114 which has 6 digits, therefore, 6 nested 'for' loops are the maximum needed to solve the problem.

for i in range(0,10):
    for f in range(0,10):
        for z in range(0,10):
            for g in range(0,10):
                for p in range(0,10):
                    for h in range(0,10):
                        number = int(str(i) + str(f) + str(z) + str(g) + str(p) + str(h))
                        if corresponds_to_sum_of_factorial_digits(number):
                            final_numbers.append(number)
if (len(final_numbers) == 4):
    break

final_sum = 0

for n in final_numbers:
    final_sum += n

#final_numbers == [1,2,145,40585]
#final_sum == 40733
