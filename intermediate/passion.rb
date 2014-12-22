# sqrt(PASSION) == KISS

#If each letter represents a different digit from 0 to 9, what is the value of KISS?

nums = []

a = 1000 #first number that, when squared, has 7 digits.

z = 3162 #last number that, when squared, has 7 digits.

while a <= z

  kiss = (a).to_s.split("")
  k = [kiss[2],kiss[3],kiss[1]]
  not_k = [kiss[0]]
  if kiss - k == not_k #only do other operations after first control flow for efficiency purposes.
    passion = (a ** 2).to_s.split("")
    p = [passion[2],passion[3],passion[4]]
    not_p = [passion[0],passion[1],passion[5],passion[6]]
    if passion - p == not_p && not_p.uniq == not_p && not_p - k == not_p && p == k
      nums.push([a**2,a])
    end
  end
  a+=1
end
