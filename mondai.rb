

def SumMoney(money, sum)
  if money == "10"
    sum = sum + 10
  elsif money == "50"
    sum = sum + 50
  elsif money == "100"
    sum = sum + 100
  elsif money == "500"
    sum = sum + 500
  elsif money == "100"
    sum = sum + 1000
  else
    puts("釣り銭",money+"円")
  end
    return sum
end




sum= 0
while true do
  puts("お金をいれてください!")
  puts("入力してください")
  puts("合計:",sum)
  selection = gets.chomp()
  if selection == "払い戻し"
    puts("釣り銭",sum,"円")
    sum=0
  else
    sum = SumMoney(selection, sum)
  end

end