# ask the user for two numbers
# ask the user for a n operation to perform
# perform the operation on the the two numbers
# outut the results

Kernel.puts("Welcome to Calculator")

Kernel.puts("What's the first number going to be?")
first_num = Kernel.gets().chomp()

Kernel.puts("What's the second number going to be?")
second_num = Kernel.gets().chomp()

# Kernel.puts("the first number is: " + first_num + "!")
# Kernel.puts("the second number is: " + second_num + "!")

Kernel.puts("What operation would you like to perform? 1) add 2) subtract 3) multiply 4) divide")
operator = Kernel.gets().chomp()

if operator == '1'
  result = first_num.to_i() + second_num.to_i()
elsif operator == '2'
  result = first_num.to_i() - second_num.to_i()
elsif operator == '3'
  result = first_num.to_i() * second_num.to_i()
elsif operator == '4'
  result = first_num.to_f() / second_num.to_f()
end

Kernel.puts("The result is #{result}")