# Medium 1 Exercise 6 - Stack Machine Interpretation

# input
# - a string of commands
#
# output rules
# 
# n Place a value n in the "register". Do not modify the stack.
# PUSH Push the register value on to the stack. Leave the value in the register.
# ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
# SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
# MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
# DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
# MOD Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
# POP Remove the topmost item from the stack and place in register
# PRINT Print the register value

# 
# algorithm
# - initialize an array to hold the 'stack'
# - split the input string into an array of substrings and iterate over
#   each one, executing the command it specifies.

require 'pry'

def minilang(string)
  # Initiliaze stack and register
  stack = [] 
  register = 0

  # Split input string
  commands = string.split(' ')

  commands.each do |command|
    case
    when command.to_i.to_s == command 
      register = command.to_i
    when command == 'PUSH'
      stack << register
    when command == 'ADD'
      register = register + stack.pop 
    when command == 'SUB'
      register = register - stack.pop
    when command == 'MULT'
      register = register * stack.pop
    when command == 'DIV'
      register = register / stack.pop 
    when command == 'MOD'
      register = register % stack.pop
    when command == 'POP'
      register = stack.pop
    when command == 'PRINT'
      puts register
    end
    
  end
end

# Examples

minilang('PRINT')
puts "-----------"
minilang('5 PUSH 3 MULT PRINT')
puts "-----------"
minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
puts "-----------"
minilang('5 PUSH POP PRINT')
puts "-----------"
minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
puts "-----------"
minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
puts "-----------"
minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
puts "-----------"
minilang('-3 PUSH 5 SUB PRINT')
puts "-----------"
minilang('6 PUSH')
