#Given two strings, write a method to decide if one is a permutation of the other. Now run it on these 4 pairs of strings. Which of these 4 pairs are permutations of the other?

#Note, the four pairs are included here:

# @#@$()@#$223*& and @#@$()@#$223@&
# abe23490a! and !a094a2eba
# @$)(#$A#)$2}B#{0_13 and @$)(#$A#)_#$}{1230B
# brilliant and illiantb

def check_permutation(string)
	strings = string.split(" and ")
	if strings[0].split("").sort.join("") == strings[1].split("").sort.join("")
		return true
	else
		return false
	end
end

puts check_permutation("@#@$()@#$223*& and @#@$()@#$223@&")
puts check_permutation("abe23490a! and !a094a2eba")
puts check_permutation("@$)(#$A#)$2}B# {0_13 and @$) (#$A#)_#$}{1230B")
puts check_permutation("brilliant and illiantb")