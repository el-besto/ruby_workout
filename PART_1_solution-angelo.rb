# Intro to Ruby Lab
### Challenge 1 - Temperature Converter
  puts "Type '1' to convert from Celsius to Fahrenheit OR \nType '2' to convert from Fahrenheit to Celsius"
  selection = gets.chomp()

  if selection == "1"
    # convert C to F
    puts "Enter Celsius Temperature: "
    temp_c = gets.chomp().to_f
    temp_f = (temp_c * 1.8 + 32).round(2)
    puts "#{temp_c} degrees Celsius is equal to #{temp_f} degrees Fahrenheit"
  elsif selection == "2"
    # convert F to C
    puts "Enter Celsius Temperature: "
    temp_f = gets.chomp().to_f
    temp_c = ((temp_f - 32) * (0.56)).round(2)
    puts "#{temp_f} degrees Fahrenheit is equal to #{temp_c} degrees Celsius"
  else
    puts "You did not choose Fahrenheit or Celsius, too bad."
  end


### Challenge 2 - Calculator
  # prompt user for operation
  puts "What calculation would you like to do? (add, sub, mult, div)"
  operation = gets.chomp()

  # add
  if operation == "add"
    puts "What is number 1?"
    num_1 = gets.chomp().to_f

    puts "What is number 2?"
    num_2 = gets.chomp().to_f

    puts "Your result is #{num_1 + num_2}"

  # sub
  elsif operation == "sub"
    puts "What is number 1?"
    num_1 = gets.chomp().to_f

    puts "What is number 2?"
    num_2 = gets.chomp().to_f

    puts "Your result is #{num_1 - num_2}"

  # mult
  elsif operation == "mult"
    puts "What is number 1?"
    num_1 = gets.chomp().to_f

    puts "What is number 2?"
    num_2 = gets.chomp().to_f

    puts "Your result is #{num_1 * num_2}"

  # div
  elsif operation == "div"
    puts "What is number 1?"
    num_1 = gets.chomp().to_f

    puts "What is number 2?"
    num_2 = gets.chomp().to_f

    puts "Your result is #{num_1 / num_2}"

  # prompt for correct input on error
  else
    puts "please select an operator: add, sub, mult, div"
  end

### Challenge 3 - Reverse a string
### HELP NEED TO FINISH

### Challenge 4 - Bank Transactions
  class BankAccount
    
    attr_accessor :balance, :withdraw, :deposit

    def initialize(balance)
      @balance = balance.to_f
    end

    def deposit
      puts "How much would you like to deposit?"
      deposit = gets.chomp().to_f
      @balance += deposit
      puts "New balance: #{@balance}"
    end

    def withdraw
      puts "How much would you like to withdraw?"
      withdraw = gets.chomp().to_f
      @balance -= withdraw
      puts "New balance: #{@balance}"
    end

    def balance
       puts "Current balance: #{@balance}"
    end 

  end

  # create hard-coded bank account for testing
  angelo = BankAccount.new(1000)

  # prompt user for transaction type
  puts "Choose: \n1. Display balance \n2. Withdraw \n3. Deposit \n4. End Transactions"
  transaction = gets.chomp()

  # run instance method depending on transaction type
  if transaction == "1"
    angelo.balance
  elsif transaction == "2"
    angelo.withdraw
  elsif transaction == "3"
    angelo.deposit
  end

### Challenge 5 - Guessing Game
### HELP NEED TO FINISH

  # Create a program that asks the user to guess a number between 1 and 100.  Once the user guesses a number, the program should say, higher, lower, or tell the user that he got the number correct.  The user should continue to make guesses until he guesses correctly.  Also, once the user guesses correctly, the program should print the number of guesses needed to arrive at the correct answer. Below is sample output:

  num = rand(1..100)
  puts "here is the secret num: #{num} \n"

  puts "Guess a number between 1 and 100"

  guess = gets.chomp().to_i

  if guess > num
    puts "The number is lower than #{guess}. Guess again."
  elsif guess < num 
    puts "The number is greater than #{guess}. Guess again."
  else
    puts "You got it! The secret number was #{guess}"
  end
    
