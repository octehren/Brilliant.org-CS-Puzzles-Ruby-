#Given a string, find the length of the longest substring without repeating characters.

#For example, the longest substring without repeating letters for "brilliant" is "liant", which has a length of 5 characters. For "aaaa" the longest substring is "a", with the length of 1 character.

#What is the length of the longest substring without repeating characters for the string below?

#xhbeqirxwobpuhkojsijumtfhsvyhyznuvzooiqxkvllfrpfnweiucjilnwixlucopomethoczbujltfycvbvvhuzstnmjcqgqchrktvsinunbopmgbwyegwkysmcxsdlhsbtcczfvcfvrbsqsxliyxzgzwvwgvvvgxgqyrbfetiwyqyircnysvcpfywdihnkjhwjsww

substring = "xhbeqirxwobpuhkojsijumtfhsvyhyznuvzooiqxkvllfrpfnweiucjilnwixlucopomethoczbujltfycvbvvhuzstnmjcqgqchrktvsinunbopmgbwyegwkysmcxsdlhsbtcczfvcfvrbsqsxliyxzgzwvwgvvvgxgqyrbfetiwyqyircnysvcpfywdihnkjhwjsww"

def non_repeat_substring(subst)
	non_repeat_streak = []
	longest_substring = []
	for i in (0..subst.size - 1)
		non_repeat_streak.push(subst[i])
		if non_repeat_streak.include?(subst[i + 1])
			if non_repeat_streak.size > longest_substring.size
				longest_substring = non_repeat_streak
			end
			non_repeat_streak = []
		end
	end
	return longest_substring.size
end

puts non_repeat_substring(substring)