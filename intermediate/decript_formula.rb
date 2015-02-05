#At your communication center, you intercept a message transmit by your enemy.
#The message is : FKHHCGCXHD. Also, one of your spies (hopefully) finds the encryption formula used by your ennemy : 7x + 2 (mod 26).
#X variable is the rank of the letter in the alphabet (starting at A = 1).
#What is the sum of all the letters of original message ?

#(example for the word "he" the sum is 8 + 5 = 13).

letters = {}

for i in (1..26)
  letters[((i * 7) + 2) % 26] = i # 0 equals to z here.
end

cipher = [6,11,8,8,3,7,3,24,8,4] # numeric positions for the FKHHCGCXHD letters.

message = []

cipher.each { |l| message.push(letters[l]) }

# message == [8, 5, 12, 12, 15, 23, 15, 18, 12, 4] : HELLOWORLD

s = 0

message.each { |n| s += n }

# s == 124
