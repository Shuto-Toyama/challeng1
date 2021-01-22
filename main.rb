puts <<~TEXT
       旅行プランを選択して下さい。
       1. 沖縄旅行 （10000円）
       2. 北海道旅行（20000円）
       3. 九州旅行  (15000円）
     TEXT

while true
  print "プラン番号の選択 > "
  plan_num = gets.to_i
  break if (1..3) === plan_num
  puts "1~3の番号を入力してください"
end

case plan_num
when 1
  place = "沖縄"
  price = 10000
when 2
  place = "北海道"
  price = 20000
when 3
  place = "九州"
  price = 15000
end

puts <<~TEXT
       #{place}旅行ですね。
       何名で予約されますか？
     TEXT

while true
  print "人数を入力 > "
  num_of_people = gets.to_i
  break if num_of_people >= 1
  puts "1以上を入力して下さい。"
end

puts "#{num_of_people}名ですね。"

calcurated_price = num_of_people * price

if num_of_people >= 5
  calcurated_price *= 0.9
  puts "5名以上ですので10%割引となります"
end

puts "合計料金は#{calcurated_price.floor}円になります。"
