# 1. Write out the Card and Deck classes to make the program work. The Deck class should hold a list of Card instances.
# 2. Change the program to use multiple choice questions. The Card class should be responsible for checking the answer.
# 3. CHALLENGE: Change the program to allow the user to retry once if they get the wrong answer.
# 4. CHALLENGE: Change the program to keep track of number right/wrong and give a score at the end.
# 5. CHALLENGE: Change the program to give the user the choice at the end of the game to retry the cards they got wrong.
# 6. CHALLENGE: Change the interface with better prompts, ASCII art, etc. Be as creative as you'd like!

class Card 
  def initialize(trivia_data)
    @answer = [] 
    @question = []

    trivia_data.each do |k,v|
      @answer << v 
      @question << k 
    end 
  end 
end 

class Deck < Card 
  @@cards_remainig = 3 
  attr_reader :answer, :question 
  def initialize(trivia_data)
    super 
  end 

  def question 
    output_q = ''
    output_a = '' 
    correct_count = 0

    i = 0 
    while i < 3 
      puts "#{@question[i]}"
      output_a = gets.chomp 

      if output_a.downcase == @answer[i].downcase
        puts "Correct!" 
        correct_count += 1 
      else 
        puts "Incorrect!" 
      end 
      i += 1
    end 
    p "You got #{correct_count} out of 3 correct!" 
  end  

  def draw_card 
    @@cards_remainig -= 1 
    self.question
  end 

  def remaining_cards 
    @@cards_remainig 
  end 
end 

trivia_data = {
  "What is the capital of Illinois?" => "Springfield",
  "Is Africa a country or a continent?" => "Continent",
  "Tug of war was once an Olympic event. True or false?" => "True"
}

deck = Deck.new(trivia_data) # deck is an instance of the Deck class

while deck.remaining_cards > 0
  card = deck.draw_card # card is an instance of the Card class
  puts card.question
  user_answer = gets.chomp
  if user_answer.downcase == card.answer.downcase
    puts "Correct!"
  else
    puts "Incorrect!"
  end
end

trivia_data = {
  "What is the capital of Illinois?" => "Springfield",
  "Is Africa a country or a continent?" => "Continent",
  "Tug of war was once an Olympic event. True or false?" => "True"
}

deck = Deck.new(trivia_data) # deck is an instance of the Deck class

while deck.remaining_cards > 0
  card = deck.draw_card # card is an instance of the Card class
  puts card.question
  user_answer = gets.chomp
  if user_answer.downcase == card.answer.downcase
    puts "Correct!"
  else
    puts "Incorrect!"
  end
end