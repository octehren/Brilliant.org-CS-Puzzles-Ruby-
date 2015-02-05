#Find the number ABCDEFGHIJ, each letter being a single digit from 0 to 9, such that it obeys the formula:
# ABCDE+
#  BCDE+
#   CDE+
#    DE+
#     E
# ______
# FGEHIJ
#
# Note: the possibility corresponds to the smallest possible sum of A + B + C + D + E.
# The first digit for any number in the formula is different than 0. 



zero_nine = [0,1,2,3,4,5,6,7,8,9]
ps = []

#all possibilities for ABCDE

for e in (1..9)
  for d in zero_nine - [e]
    for c in zero_nine - [d,e]
      for b in zero_nine - [c,d,e]
        for a in zero_nine - [0,b,c,d,e]
          ps.push([a,b,c,d,e])
        end
      end
    end
  end
end

# ps.size => 24192

ps2 = {}

for num in ps
  j = num[4] * 5
  i = num[3] * 4 + j / 10 # 1/10 = 0, 11/10 = 1, 23/10 = 2 ...
  h = num[2] * 3 + i / 10
  g = num[1] * 2 + h / 10
  f = num[0] + g / 10
  if f < 10
    ps2[num] = [f.to_s,g.to_s[-1],h.to_s[-1],i.to_s[-1],j.to_s[-1]]
  end
end

# ps2.size => 22883

ps3 = []

ps2.each do |key,val|

    if val.uniq.size == 5
      if (key - [val[0].to_i,val[1].to_i,val[2].to_i,val[3].to_i,val[4].to_i]).size == 5
        ps3.push([key,val])
    end
  end

end

# ps3.size => 13

ps4 = []

ps3.each do |key,val|
  if key.include?(0) == false
    ps4.push([key,val])
  end
end

minimum = 40

ps4.each do |key,val|

  min = key[0] + key[1] + key[2] + key[3] + key[4]
  minimum = min if min < minimum

end

answer = []

ps4.each do |val|

  min = val[0][0] + val[0][1] + val[0][2] + val[0][3] + val[0][4]
  if min == minimum
    answer.push(val)
  end
end
