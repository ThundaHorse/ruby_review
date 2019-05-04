# 1. Write out the Card and Deck classes to make the program work. The Deck class should hold a list of Card instances.
# 2. Change the program to use multiple choice questions. The Card class should be responsible for checking the answer.
# 3. CHALLENGE: Change the program to allow the user to retry once if they get the wrong answer.
# 4. CHALLENGE: Change the program to keep track of number right/wrong and give a score at the end.
# 5. CHALLENGE: Change the program to give the user the choice at the end of the game to retry the cards they got wrong.
# 6. CHALLENGE: Change the interface with better prompts, ASCII art, etc. Be as creative as you'd like!
system "clear" 

class Card 
  attr_reader :question, :answer, :trivia_data 
  def initialize(trivia_data)
    @trivia_data = trivia_data 
    @answer = [] 
    @question = []

    @trivia_data.each do |k,v|
      @answer << v 
      @question << k 
    end 
  end 

  def colorize(word)
    color_array = [31, 32, 33, 34, 35, 36, 37, 38]
    arr = []
    word.split("").each do |letter| 
      color_code = color_array.sample
      arr << "\e[#{color_array.sample}m#{letter}\e[0m"
      next
    end 
    arr.join("")
  end

  def color_question
    new_array = [] 
    @question.each do |word| 
      new_array << colorize(word)      
    end 

    new_array 
  end 

  def question 
    output_q = ''
    output_a = '' 
    correct_count = 0
    incorrect_count = 0 

    kawaii_faces = ['(ﾉ◕ヮ◕)ﾉ*:･ﾟ✧', 'ヾ(＠＾▽＾＠)ﾉ', '◃┆◉◡◉┆▷', '( ́ ◕◞ε◟◕`)', '(づ｡◕‿‿◕｡)づ', '∩(︶▽︶)∩', '✿◕ ‿ ◕✿', 'ヽ(ﾟｰﾟ*ヽ)ヽ(*ﾟｰﾟ*)ﾉ(ﾉ*ﾟｰﾟ)ﾉ'] 
    i = 0 
    while i < 5
      puts colorize("▼" * 50)
      puts colorize(kawaii_faces.sample.center(45))
      puts ""
      puts " #{@question[i]} ".center(45)
      puts "" 
      puts colorize("▲" * 50)
      puts ""
      output_a = gets.chomp 

      if output_a.downcase == @answer[i].downcase
        puts ""

        3.times do |yeet| 
          print colorize("✧･ﾟ:")
          sleep(0.2)
        end 

        print " Correct! " 

        3.times do |yeet| 
          print colorize("✧･ﾟ:")
          sleep(0.2)
        end 

        system "clear"
        correct_count += 1 
      else 
        puts "Incorrect!"  
        puts ""
        puts "Would you like to try again?" 
        puts "[Y] or [N]" 
        output_a = gets.chomp 
        system "clear"
        if output_a == "Y".downcase 
          puts "#{@question[i]}" 
          output_a = gets.chomp 
          puts "" 
          if output_a == @answer[i].downcase 
            puts "Correct!" 
            correct_count += 1 
          end 
        else 
          incorrect_count += 1 
          i += 1
          next 
        end  
      end 
      i += 1
    end 

    puts "Correct Count: #{correct_count}"
    puts "" 
    puts "Incorrect Count: #{incorrect_count}"
    puts ""
    if correct_count > incorrect_count 
      puts "Nice Job!" 
    else 
      puts "You suck ヅ"
    end 
    puts "" 
    puts "Type 'Q' to exit or 'R' to retry."
    ending_choice = gets.chomp
    if ending_choice == "R".downcase 
      system 'clear'
      self.question 
    else 
      puts "" 
      puts "Bye!" 
      puts "" 
      puts "(⊙‿⊙✿)" 
      puts "" 
      puts "press 'Enter' to quit"
      puts "" 
    end 
  end 
end 

class Deck 
  @@cards_remainig = 5
  attr_reader :trivia_data
  def initialize(trivia_data)
    @trivia_data = trivia_data 
  end 

  def draw_card 
    @@cards_remainig -= 1 
    draw_card = Card.new(@trivia_data) 
  end 

  def remaining_cards 
    @@cards_remainig 
  end 
end 

trivia_data = {
              "Do Apple products suck?" => "Yes",
              "Do you like pizza?" => "Yes",
              "Is this fun?" => "Yes",
              "Do you like cats?" => "yes", 
              "Do you like my colors?" => "yes"
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

