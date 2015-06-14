require 'pry'
def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(deal_card)
  # code #display_card_total here
  puts "Your cards add up to #{deal_card}"

end

def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def initial_round
  # code #initial_round here
  sum = deal_card + deal_card 
  display_card_total(sum)
  sum 
end

def end_game(sum)
  # code #end_game here
  puts "Sorry, you hit #{sum}. Thanks for playing!"
end

def get_user_input
  # code #get_user_input here
  answer = gets.chomp
end

def hit?(sum)
  # code hit? here
  prompt_user
  case get_user_input
    when 'h'
    sum + deal_card 
    when 's'
    sum
  end

end

def invalid_command
  # code invalid_command here
  get_user_input
  if answer !('h' || 's')
    puts "Invalid Command"
  end
    prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  sum = initial_round
  until sum > 21
    sum = hit?(sum)
    display_card_total(sum)
  end
    end_game(sum)
end
    