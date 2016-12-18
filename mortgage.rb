# mortgage calculator

def prompt(message)
  Kernel.puts("=> #{message}")
end

prompt("Welcome to the mortgage calculator!")

apr = ''
dur_years = ''
loan_amount = ''
loop do
  loop do
    prompt("Please enter your loan amount in USD.")
    loan_amount = gets.chomp
    if loan_amount.to_i.to_s == loan_amount
      break
    else
      prompt("That doesn't look like a valid number...")
    end
  end

  loop do
    prompt("Please enter your Annual Percentage Rate (APR).")
    apr = gets.chomp
    if loan_amount.to_i.to_s == loan_amount
      break
    else
      prompt("That doesn't look like a valid number...")
    end
  end

  loop do
    prompt("Please enter the amount of years for your loan.")
    dur_years = gets.chomp
    if loan_amount.to_i.to_s == loan_amount
      break
    else
      prompt("That doesn't look like a valid number...")
    end
  end

  anual_interest_rate = apr.to_f / 100
  apr_monthly = anual_interest_rate.to_f / 12
  dur_months = dur_years.to_i * 12

  monthly_payment = loan_amount.to_f * 
                    (apr_monthly /
                    (1 - (1 + apr_monthly)**(-dur_months)))

  prompt("Your monthly payment is $#{format('%02.2f', monthly_payment)}")
  prompt('Would you like to make another mortgage calculation? If so enter "y".')
  answer_final = gets.chomp
  break unless answer_final.downcase().start_with?('y')
end

prompt("Thank you for using the mortage calculator! Bye.")