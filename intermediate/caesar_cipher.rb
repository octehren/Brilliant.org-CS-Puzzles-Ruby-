# In cryptography, Caesar's cipher is arguably the simplest and most widely known encryption technique.

# It is a simple substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet.
# For example, with a password of 3, A would be replaced by D, B would become E, and so on.

# Implement Caesar's cipher and use it to reveal the answer to this problem by decoding the message below.

ciphered = "ugfyjslmdslagfk gf kgdnafy lzak hjgtdwe lzw sfkowj ak log zmfvjwv sfv lowflq log"

# => Encrypted on 'h'; message is  'CONGRATULATIONS ON SOLVING THIS PROBLEM THE ANSWER IS TWO HUNDRED AND TWENTY TWO'

def caesar_decipher(ciphered)
  coded_words_chars = ciphered.upcase().split("")
  all_messages = []
  message = []
  most_common_english_words = ["THE","BE","TO","OF","AND","A","IN","THAT","HAVE","I","IT","FOR","WITH","AS","IS"]
  alphaposition = 0
  while alphaposition <= 26
    alphaposition += 1
    coded_words_chars.each do |char|
      if $ordered_alphabet[char] == nil
        message.push(char)
      else
        message.push($ordered_alphabet[($alpha_nums[char] + alphaposition) % 26])
      end
    end
    message = message.join("")
    message = message.split(" ")
    most_common_english_words.each do |word|
      if message.include?(word)
        puts message.join(" ")
        puts "Does this make any sense? (y/n)"
        answer = gets.chomp
        if answer == 'y' || answer == 'Y'
          return message.join(" ")
        else
          puts message.join(" ")
        end
      end
    end
    all_messages.push(message)
    message = []
  end
  puts all_messages
end



$alpha_nums =  {
  "A"=>1,
  "B"=>2,
  "C"=>3,
  "D"=>4,
  "E"=>5,
  "F"=>6,
  "G"=>7,
  "H"=>8,
  "I"=>9,
  "J"=>10,
  "K"=>11,
  "L"=>12,
  "M"=>13,
  "N"=>14,
  "O"=>15,
  "P"=>16,
  "Q"=>17,
  "R"=>18,
  "S"=>19,
  "T"=>20,
  "U"=>21,
  "V"=>22,
  "W"=>23,
  "X"=>24,
  "Y"=>25,
  "Z"=>26}

  $ordered_alphabet ={
    1 =>"A",
    2 =>"B",
    3 =>"C",
    4 =>"D",
    5 => "E",
    6 =>"F",
    7 =>"G",
    8 =>"H",
    9 =>"I",
    10 =>"J",
    11 =>"K",
    12 =>"L",
    13 =>"M",
    14 =>"N",
    15 =>"O",
    16 =>"P",
    17 =>"Q",
    18 =>"R",
    19 =>"S",
    20 =>"T",
    21 =>"U",
    22 =>"V",
    23 =>"W",
    24 =>"X",
    25 =>"Y",
    26 =>"Z",
  }
