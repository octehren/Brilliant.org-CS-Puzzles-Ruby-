# In cryptography, Caesar's cipher is arguably the simplest and most widely known encryption technique.

# It is a simple substitution cipher in which each letter in the plaintext is replaced by a letter some fixed number of positions down the alphabet.
# For example, with a password of 3, A would be replaced by D, B would become E, and so on.

# Implement Caesar's cipher and use it to reveal the answer to this problem by decoding the message below.

ciphered = "ugfyjslmdslagfk gf kgdnafy lzak hjgtdwe lzw sfkowj ak log zmfvjwv sfv lowflq log"

def ceaser_decipher(ciphered)
  coded_words_chars = ciphered.upcase().split("")
  message = []
  most_common_english_words = ["the","be","to","of","and","a","in","that","have","I","it","for","with","as"]
  $ordered_alphabet.each do |char|

    

  end


end





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
