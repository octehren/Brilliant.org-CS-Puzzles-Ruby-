#Consider the list of 10 objects below, suppose we rotate it to the left 129 times. Which of the following arrays will we get after the rotation?

# [ "{" , "3", "&" , "22", "37", "!" , "35", "17", "8", "11" ]

def rotate_to_left(t,array)
  t.times do |rotate|
    b = array[0]
    array.delete(b)
    array.push(b)
  end
  return array
end

array = [ "{" , "3", "&" , "22", "37", "!" , "35", "17", "8", "11" ]

rotate_to_left(129,array)

# => ["11", "{", "3", "&", "22", "37", "!", "35", "17", "8"]
