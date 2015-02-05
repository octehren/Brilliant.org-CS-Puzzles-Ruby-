# In cryptography, Caesar's cipher is arguably the simplest and most widely known encryption technique.

# It is a simple substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet.
# For example, with a password of 3, A would be replaced by D, B would become E, and so on.

# Implement Caesar's cipher and use it to reveal the answer to this problem by decoding the message below.

#ciphered = "ugfyjslmdslagfk gf kgdnafy lzak hjgtdwe lzw sfkowj ak log zmfvjwv sfv lowflq log"

# => Encrypted on 'h'; message is  'CONGRATULATIONS ON SOLVING THIS PROBLEM THE ANSWER IS TWO HUNDRED AND TWENTY TWO'

# => GIST GITHUB COM ANONYMOUS 8207770
class CaeCipher()

  @@alpha_nums =  { # 'Z => 0' because of the "modulo 26" operation.
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
    "Z"=>0}


  def self.encipher(message,key=3) #officially, Caesar cipher shifts 3 positions. the n position shift cipher is the "shift cipher".
    if key.class == String
      key = @@alpha_nums[key]
    elsif key.class != Fixnum
      raise "Key argument must be either a string or integer."
    end

    cipher = []
    message = message.upcase.split("")
    message.each do |char|
      if @@alpha_nums[char] == nil
        cipher.push(char)
      else
        cipher.push(@@alpha_nums.find { |k,val| @@alpha_nums[k] == ((@@alpha_nums[char] + key) % 26) }[0])
      end
    end
    return cipher.join("")
  end

  def self.decipher(ciphered,words_to_search_for=false)
    most_common_english_words = ["THE","BE","TO","OF","AND","A","IN","THAT","HAVE","I","IT","FOR","WITH","AS","IS"]

    #checks for optional argument and adds it to words of interest.
    if words_to_search_for
      if words_to_search_for.class == Array
        words_to_search_for.each { |word| word = word.upcase }
        most_common_english_words = words_to_search_for + most_common_english_words
      elsif words_to_search_for.class == String
        words_to_search_for = words_to_search_for.upcase.split(/\s/)
        most_common_english_words = words_to_search_for + most_common_english_words
      end
    end

    # variables that need to be declared outside the function's main loop.
    ciphered = ciphered.upcase
    coded_words_chars = ciphered.split("")
    all_messages = []
    alphaposition = 0

    #main loop; iterates over alphabet and shifts each character of the input cipher.
    #(line 47 to 56) Asks user to confirm a possible match. Outputs all shifts if no confirmation is received.
    while alphaposition <= 26
      message = []
      alphaposition += 1
      coded_words_chars.each do |char|
        if @@alpha_nums[char] == nil
          message.push(char)
        else
          message.push(@@alpha_nums.find { |key,val| @@alpha_nums[key] == (@@alpha_nums[char] + alphaposition) % 26 }[0])
        end
      end
      message = message.join("").split(/[^A-Z0-9]/) # the RegEx splits 'message' by each char that fits 'not an uppercase letter neither a digit'
      most_common_english_words.each do |word|
        if message.include?(word)
          puts message.join(" ")
          puts "Does this make any sense? (y/n)"
          answer = gets.chomp
          if answer == 'y' || answer == 'Y'
            shifts = @@alpha_nums[ ciphered[0] ] - @@alpha_nums[ message[0] ]
            shifts *= -1 if shifts < 0
            puts "Encrypted with #{ shifts } shifts"
            return message.join(" ")
          end
        end
      end
      all_messages.push(message.join(" "))
    end

    #output in case of failure of match recognition by the user.
    puts all_messages
  end

end
