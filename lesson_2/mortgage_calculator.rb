# Mortgage Calculator

def valid_loan?(num)
  num.to_i.to_s == num
end

def valid_rate?(num)
  num.to_f.to_s == num && num.to_f <= 100
end

def valid_duration?(num)
  num.to_i.to_s == num
end

def prompt(message)
  puts "=> #{message}"
end

def monthly_payment(amt, loan_duration, annual_percentage_rate)
  monthly_rate = (annual_percentage_rate.to_f / 100) / 12
  months = loan_duration.to_i * 12
  (amt.to_f * (monthly_rate / (1 - (1 + monthly_rate)**-months))).round(2)
end

# Initialize the variables

principle = ''
apr = ''
duration = ''

prompt("Welcome to the mortgage calculator!")

loop do
  prompt("Please input the loan amount in dollars:")
  principle = gets.chomp
  break if valid_loan?(principle)
  prompt("I'm sorry, but that isn't a valid loan amount!")
end

loop do
  prompt("Please input the Annual Percentage Rate as a decimal (0.0 - 100.0%)")
  apr = gets.chomp
  break if valid_rate?(apr)
  prompt("I'm sorry, but that isn't a valid Annual Percentage Rate!")
end

loop do
  prompt("Please input the duration of the loan, in years:")
  duration = gets.chomp
  break if valid_duration?(duration)
  prompt("I'm sorry, but that isn't a valid number of years!")
end

prompt("Your monthly payment amount is:")
prompt("$" + monthly_payment(principle, duration, apr).to_s)
