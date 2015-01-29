# Find the sum of all the prime numbers less than 1000 that come just before a perfect square.

def is_prime?(n,prime_array=false) # number to be checked as first parameter, optional second parameter to be used with a method that returns an array of primes.
 if n < 2
   return false
 elsif n == 2
   return true
 else
   if prime_array
     for i in (2..(n/2)+1) #it makes no sense to divide by numbers which would result in a result less than 2 (the smallest prime); the '+1' in the end is due to the default 'round down' in integer division in Ruby.
       prime_array.each { |prime| return false if (n % prime) == 0 }
     end
   else
     for i in (2..(n/2)+1)
       if (n % i) == 0
         return false
       end
     end
   end
 end
   return true
end

prime_sum = 0

for i in (1..31) # 32 ** 2 == 1024
  n = (i ** 2) - 1
  if is_prime?(n)
    prime_sum += n
  end
end

# prime_sum == 3

# Find the sum of all the prime numbers less than 1000 that come just after a perfect square.

prime_sum = 0

for i in (1..31) # 32 ** 2 == 1024
  n = (i ** 2) + 1
  if is_prime?(n)
    prime_sum += n
  end
end

# prime_sum == 2271
