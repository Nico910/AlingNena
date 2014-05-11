class MoneyCalculator

  def initialize(ones, fives, tens, twenties, fifties, hundreds, five_hundreds, thousands)
  	@total_ones = 1 * ones.to_i
	@total_fives = 5 * fives.to_i
	@total_tens = 10 * tens.to_i
	@total_twenties = 20 * twenties.to_i
	@total_fifties = 50 * fifties.to_i
	@total_hundreds = 100 * hundreds.to_i
	@total_five_hundreds = 500 * five_hundreds.to_i
	@total_thousands = 1000 * thousands.to_i

	@total = @total_ones.to_i + @total_fives.to_i + @total_tens.to_i + @total_twenties.to_i + @total_fifties.to_i + @total_hundreds.to_i + @total_five_hundreds.to_i + @total_thousands.to_i

	@bills = Hash.new
	@bills["thousands_bill"] = 0	
	@bills["five_hundreds_bill"] = 0
	@bills["hundreds_bill"] = 0
	@bills["fifties_bill"] = 0
	@bills["twenties_bill"] = 0
	@bills["tens_bill"] = 0
	@bills["fives_bill"] = 0
	@bills["ones_bill"] = 0
	
  end

  def total
	@total = @total_ones.to_i + @total_fives.to_i + @total_tens.to_i + @total_twenties.to_i + @total_fifties.to_i + @total_hundreds.to_i + @total_five_hundreds.to_i + @total_thousands.to_i
    return @total
  end

  def change(total_cost)
	@change = @total - total_cost.to_i

	change = @change
	grand = change/1000
	halfgrand = (change%1000)/500
	tenth = ((change%1000)%500)/100
	halftenth = (((change%1000)%500)%100)/50
	twentieth = ((((change%1000)%500)%100)%50)/20
	halftwentieth = (((((change%1000)%500)%100)%50)%20)/10
	fifth = ((((((change%1000)%500)%100)%50)%20)%10)/5
	singles = ((((((change%1000)%500)%100)%50)%20)%10)%5
	return {:ones_bill => singles, :fives_bill => fifth, :tens_bill => halftwentieth, :twenties_bill => twentieth, :fifties_bill => halftenth, :hundreds_bill => tenth, :five_hundreds_bill => halfgrand, :thousands_bill => grand}
  end


end
