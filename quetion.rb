=begin
入力
①Nバスの残高、Mにバスに乗った回数
②M回数分のバスの運賃

処理
①バスの運賃<ポイント残高の場合⇨ポイント精算でポイントつかない
バスの運賃> ポイント残高⇨カードの残高払いでポイントつく

出力
降車時のパスの残高、ポイント残高



=end
#カード残高
card_balance = gets.to_i
#バスの搭乗回数
number_bus = gets.to_i

points = 0

bus_fares = []
number_bus.times do 
   a = gets.to_i
   bus_fares.push(a)
end 

bus_fares.each do |bus_fare|
   #バスの運賃 >ポイントになっていた場合カードの残高払いのポイントあり
if bus_fare > points 
  card_balance -= bus_fare
  points += bus_fare / 10
  puts card_balance
  puts points
  #バスの運賃 =< ポイントになっていた場合ポイント払い付与ポイントなし
elsif bus_fare <= points 
   points -= bus_fare
   puts card_balance
   puts points
end
end
