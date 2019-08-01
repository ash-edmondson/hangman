#d#hangmanhangman game


# Tell user what to dor
puts "Guess the word one letter at a time"

# Think of a word
word =["avengers", "Spiderman", "batman"].sample
letters =word.split ""

guesses = []

# Give them guesses
10.times do
  # draw user progress
  # -on--y
  letters.each do |letter|
    if guesses.include? letter
      print letter
      else
        print "-"
    end
  end

  # get a guess from user
  guess = gets.strip.downcase

  # check if in the word
  if letters.include? guess
  guesses.push guess
  end
  # check if they have won
if letters.sort.uniq == guesses.sort.uniq
  puts word
  puts "You WIN!"
  break
else 
  puts "keep guesing"
end
end
