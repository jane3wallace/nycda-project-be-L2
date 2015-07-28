# Back End 101 July 2015, Week 1 Lecture 2 Homework
# https://gist.github.com/kareemgrant/a273088e9f632fe6d39c

# Exercise One
# Create a program to analyze a large block of text
# and report back on the frequency of each word in the text.
# Once you've created this hash, return the word that
# has been used the most.
def textAnalyzer(text)
  words = text.to_s.downcase.split(/[^a-zA-Z]/)
  repeat = Hash.new(0)
  words.each do |word| 
    repeat[word] += 1 
  end
  puts repeat.inspect
  repeat = repeat.sort_by { |x,y| y }
  repeat.reverse!
  puts repeat.first
end

textAnalyzer("Olly olly oxen free.")
textAnalyzer("How the danger sinks and swells,
By the sinking or the swelling in the anger of the bells,
Of the bells,
Of the bells, bells, bells, bells,
Bells, bells, bells—
In the clamor and the clangor of the bells!")