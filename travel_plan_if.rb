puts <<~TEXT
  旅行プランを選択してください。

  1. 沖縄旅行（10000円）
  2. 北海道旅行（20000円）
  3. 九州旅行（15000円）

TEXT

# choose the plan
while true
  print "プランの番号を選択 > "
  plan_num = gets.to_i
  break if (1..3).include?(plan_num)
  puts "1~3の番号を入力してください。"
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
何人で予約されますか？

TEXT

# decide the num of guests
while true
  print "人数を入力 > "
  guest_num = gets.to_i
  break if (guest_num.to_i > 0)
    puts "1以上を入力してください。"
end

puts ""
puts "#{guest_num }名ですね。"

if guest_num < 5
  puts <<~TEXT
  合計金額は、#{price * guest_num}円になります。
  TEXT

else
  puts <<~TEXT
  #{guest_num }名以上ですので10%割引となります。
  合計金額は、#{(price * guest_num * 0.9).floor}円になります。
  TEXT

end
