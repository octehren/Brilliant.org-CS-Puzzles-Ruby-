#Two strings are considered anagrams if the characters of one string can be rearranged to form the second string.
#For instance, "cat" and "act" are anagrams because the letters of "cat" can be rearranged to spell "act". "cat" and "cat" are also anagrams of each other.
#This file ( https://gist.github.com/brilliant-problems/e7e9e3471b8cff1e2a15 ) contains a line-separated list of strings.
#Let A be the number of strings in the file that are an anagram of another string in the file.
#What is A?

total_string = "..." #contents of the line-separated strings on the file above.

words = total_string.split(/\n/)

is_anagram = []

for i in (0..words.size-2)
  for z in (i+1..words.size-1)
    if words[i].size == words[z].size
      if words[i].split("").sort == words[z].split("").sort
        is_anagram.push(words[i])
        is_anagram.push(words[z])
        break
      end
    end
  end
end

is_anagram.uniq.size

# => 59
