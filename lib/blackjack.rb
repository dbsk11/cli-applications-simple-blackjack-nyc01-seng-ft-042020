def welcome
  puts "Welcome to the Blackjack Table"  # code #welcome here
end

def deal_card
  return rand(1..11) # code #deal_card here
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
  card_total
  # code #display_card_total here
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"# code #prompt_user here
end

def get_user_input
  gets.strip.chomp# code #get_user_input here
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
  # code #end_game here
end

def initial_round
  # code #initial_round here
  card_one = deal_card
  card_two = deal_card
  card_total = card_one + card_two
  display_card_total(card_total)
end

def hit?(card_total)
  prompt_user
  user_input = get_user_input
  if user_input == 'h'
    new_card = deal_card
    card_total += new_card
  elsif card_total == 's'
    card_total
  end
  if user_input != 'h' && user_input != 's'
    invalid_command
    prompt_user
    user_input = get_user_input
  end
  card_total
  # code hit? here
end

def invalid_command
  puts "Please enter a valid command"
    # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
end
