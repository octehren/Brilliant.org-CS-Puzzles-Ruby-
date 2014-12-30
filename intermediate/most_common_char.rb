#How many times does the most common character in this file (https://gist.github.com/brilliant-problems/6e960e2a40c57e494c41 ) appear?

str = "..." #characters from the file.

p_string = str.split("")

chars = {}

p_string.each { |c| chars[c] = 0 }

p_string.each { |c| chars[c] += 1 }

most_common = 0
char = 0
chars.each do |a|
  char = chars[a]
  most_common = char if char > most_common
end

most_common

# => 26
