

#お金を入れる時の合計と釣り銭
def SumMoney(money, sum)
  if money == "10"
    sum = sum + 10
  elsif money == "50"
    sum = sum + 50
  elsif money == "100"
    sum = sum + 100
  elsif money == "500"
    sum = sum + 500
  elsif money == "1000"
    sum = sum + 1000
  else
    puts("釣り銭"+money.to_s+"円")
  end
    return sum
end




#入れたお金
sum= 0
#コーラの在庫
kocount = 5
#レッドブルの在庫
recount = 5
#水の在庫
wacount = 5
#売上
sales = 0

while true do
  puts("お金をいれてください!")
  puts("入力してください。払い戻し(3)")
  ＃お金の金額を入力　払い戻しは6を入力
  puts("合計:"+sum.to_s+"円")
  selection = gets.chomp()
  if selection == "3"
    puts("釣り銭"+sum.to_s+"円")
    sum=0
  else
    sum = SumMoney(selection, sum)
  end
　＃ジュースの在庫
  count =  kocount+recount+wacount


if sum >= 100 && count > 0
  puts("ジュース買いますか？はい(1)いいえ(2)")
  selection = gets.chomp()
  if selection == "1"
    ＃コーラ　1、レッドブル　2、水　3を　入力
    puts("コーラ(1)（値段:120円、在庫:"+ kocount.to_s + "本)")
    puts("レッドブル(2)（値段:200円、在庫:"+ recount.to_s + "本)")
    puts("水(3)（値段:100円、在庫:"+ wacount.to_s + "本)")
    selection = gets.chomp()
    if selection == "1" && kocount > 0
      kocount = kocount - 1
      sum = sum - 120
      sales = sales +120
      puts("釣り銭"+sum.to_s+"円")
      sum=0
    elsif selection == "2" && recount > 0 && sum >= 200
      recount = recount - 1
      sum = sum - 200
      sales = sales + 200
      puts("釣り銭"+sum.to_s+"円")
      sum=0
    elsif selection == "3" && wacount > 0
      wacount = wacount - 1
      sum = sum -100
      sales = sales + 100
      puts("釣り銭"+sum.to_s+"円")
      sum=0
    else
      puts("出来ません。")
    end
  end
end
end
