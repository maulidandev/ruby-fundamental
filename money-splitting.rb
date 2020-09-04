print "Masukkan nilai uang : "
money = gets.to_i

fractionOfMoney = [100000, 50000, 20000, 10000, 5000, 2000, 1000, 500, 100, 50, 10, 5, 1]
amount = Array.new(fractionOfMoney.length, 0)

fractionOfMoney.each_with_index do |fraction, i|
    amount[i] = money / fraction
    money -= amount[i] * fraction
end

printf("| %-7s |  %-4s  |\n", "Pecahan", "Total")
fractionOfMoney.each_with_index do |fraction, i|
    printf("| %-7d |  %-6d |\n", fraction, amount[i])
end