
=begin
タイトル何円分飲んだら無料？
仕様　１杯１００円のコーヒーがあるとする
買うたびに５０％引きになるいくら飲んだら無料になるか計算する
毎回の値下げの小数点以下は切り捨て
例　１００円コーヒーの５０％で１杯目５０円、２杯目２５円
３杯目１２.５円＝１２円、４杯目６円、５杯目３円、６杯目１円、７杯目０、５円＝無料　つまり９７円分買えば無料
合計　＝　０
定価　× 割引率　＝割引金額
定価　ー　割引金額　＝商品代金
合計 += 商品代金
商品代金　✖️ 割引率
puts 合計
①定価と割引率と合計の変数用意する
②定価　× 割引率　＝割引金額
③定価　ー　割引金額　＝商品代金
④合計 += 商品代金
⑤くり返す商品代金が２以上の間は繰り返す
=end 

#コーヒー代金
coffee = gets.to_i
#割引割合
discount_rate = gets.to_i
#いくらで次のコーヒー無料になるのか
total = 0
#割引金額
discounted_price= coffee *(discount_rate.to_f / 100)
#割引後金額
price = coffee - discounted_price.floor
#合計金額に割引後金額代入
total += coffee

until price < 1
total += price
new_discount = price * (discount_rate.to_f / 100)
price = price - new_discount
end 
puts total.floor
