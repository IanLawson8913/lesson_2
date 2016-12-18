def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i.to_s == num || num.to_f.to_s == num
end

def operation_to_message(op)
  case op
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt("Welcome to Calculator! Enter your name:")

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

prompt("Hi, #{name}!")

loop do # main loop
  first_num = ''
  loop do
    prompt("What's the first number going to be?")
    first_num = Kernel.gets().chomp()

    if valid_number?(first_num)
      break
    else
      prompt("Hmm...that doesn't look like a valid number")
    end
  end

  second_num = ''
  loop do
    prompt("What's the second number going to be?")
    second_num = Kernel.gets().chomp()

    if valid_number?(second_num)
      break
    else
      prompt("Hmm...that doesn't look like a valid number")
    end
  end

  operator_prompt = <<-MSG
    What operation would you like to perform?
    1) add
    2) subtract
    3) multiply
    4) divide
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Must choose 1, 2, 3 or 4")
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             first_num.to_i() + second_num.to_i()
           when '2'
             first_num.to_i() - second_num.to_i()
           when '3'
             first_num.to_i() * second_num.to_i()
           when '4'
             first_num.to_f() / second_num.to_f()
           end

  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using the Calculator! Goodbye")
