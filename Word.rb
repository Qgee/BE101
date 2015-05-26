######################
# Intro for the User #
######################

puts ""
puts ""
puts ""
puts "This prorgram analyzes the frequency of words found in a text"
puts ""
puts "Please enter a block of text:"
puts ""

#############################
# Accepts user input:  Text #
#############################

strInput = gets.chomp

################
# Computations #
################

aryWords = 	strInput.split(/\W+/)

hshWordCount = Hash[aryWords.group_by {|x| x}.map {|k,v| [k,v.count]}]

intHighestFreq = hshWordCount.values.max 

hshHighestFreqWords = hshWordCount.select{|key, value| value == intHighestFreq}

#################
# Print Outputs #
#################

puts hshWordCount

if hshHighestFreqWords.count == 1
	puts "There is one word with the highest frequency word count (#{intHighestFreq}).  It is: #{hshHighestFreqWords.keys}"
else
	puts "There are #{hshHighestFreqWords.count} words with the highest frequency word count (#{intHighestFreq}).  They are: #{hshHighestFreqWords.keys}"
end


