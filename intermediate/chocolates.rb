# A shopkeeper has an excellent recycling policy:

# He gives you 1 chocolate per every Dollar you give him.
# He gives you 1 chocolate per every 3 wrappers you give him.
# You have $59049 with you. What is the maximum number of chocolates that you can buy?

# Extra Credit: Try to derive a generalised expression for the number of chocolates you can buy with $n

# Details and Assumptions:

# You do not initially have any wrappers with you.
  # All the chocolates you buy come wrapped in wrappers.
  # There is no upper bound on the number of transactions you can do.
  # The shopkeeper has infinite chocolates.

def chocolates(money,price,wrappers) #so the function can work with different prices for the chocolates
                                     #and different wrapper/chocolate promotions.
  chocolates = (money.to_f / price.to_f).to_i #rounds down number of chocolates for (money % price) != 0

  total = chocolates.to_i

  while (chocolates / wrappers) >= 1
    chocolates /= wrappers
    chocolates.to_i.to_f # for rounding purposes.
    total += chocolates.to_i
    chocolates
  end

  return total

end


chocolates(59049,1,3)
