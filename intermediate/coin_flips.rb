# Consider the array containing the result  of coin flips. Let us call a set of flips a "streak" if
# it is a series of  or more adjacent flips of the same value. How many "streaks" are there
# in the array below?

flips = ['H', 'T', 'H', 'T', 'T', 'H', 'T', 'T', 'H', 'H', 'T', 'H', 'H', 'T',
'H', 'H', 'H', 'T', 'T', 'H', 'T', 'H', 'T', 'T', 'T', 'T', 'T', 'T', 'T', 'H',
'T', 'H', 'H', 'T', 'T', 'T', 'T', 'T', 'H', 'H', 'T', 'T', 'T', 'H', 'T', 'H',
'T', 'H', 'H', 'T', 'H', 'H', 'T', 'T', 'T', 'H', 'H', 'H', 'T', 'H', 'H',
'T', 'T', 'T', 'T', 'T', 'T', 'H', 'H', 'H', 'T', 'T', 'T', 'T', 'H', 'H',
'T', 'H', 'T', 'H', 'H', 'H', 'H', 'H', 'H', 'H', 'T', 'T', 'T', 'H', 'H',
'H', 'H', 'H', 'T', 'T', 'T', 'H', 'H', 'H']

def total_streaks(flips)
  streaks = 0
  i = 0
  while i <= flips.size-1
    if flips[i] == flips[i + 1]
      streaks +=1
      while flips[i] == flips[i + 1]
        i+=1
      end
    end
    i+=1
  end
  return streaks
end

total_streaks(flips)

# => 25
