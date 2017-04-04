require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i.to_s == num
end

def operation_to_message(op)
  case op
  when '1'
    operation = 'Adding'
  when '2'
    operation = 'Subtracting'
  when '3'
    operation = 'Multiplying'
  when '4'
    operation = 'Dividing'
  end
  operation
end

prompt(MESSAGES['welcome'])

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(MESSAGES['invalid_name'])
  else
    break
  end
end

  loop do
    number1 = ''
    number2 = ''

    loop do
      prompt(MESSAGES['num1'])
      number1 = Kernel.gets().chomp()

      if valid_number?(number1)
        break
      else
        prompt(MESSAGES['invalid_num'])
      end
    end

    loop do
      prompt(MESSAGES['num2'])
      number2 = Kernel.gets().chomp()

      if valid_number?(number1)
        break
      else
        prompt(MESSAGES['invalid_num'])
      end
    end

    operator_prompt = <<-MSG
      1) Add
      2) Subtract
      3) Multiply
      4) Divide
    MSG

    prompt(operator_prompt)

    operator = ''

    loop do
      operator = Kernel.gets().chomp()

      if %w(1 2 3 4).include?(operator)
        break
      else
        prompt(MESSAGES['invalid_operator'])
      end
    end

    prompt("#{operation_to_message(operator)}" + MESSAGES['processing'])

    result = case operator
             when '1'
  number1.to_i() + number2.to_i()
             when '2'
  number1.to_i() - number2.to_i()
             when '3'
  number1.to_i() * number2.to_i()
             when '4'
  number1.to_f() * number2.to_f()
    end

    prompt(MESSAGES['result_msg'] + " #{result}")

    prompt(MESSAGES['again'])
    answer = Kernel.gets().chomp()
    break unless answer.downcase().start_with?('y')
end

prompt("Goodbye!")
