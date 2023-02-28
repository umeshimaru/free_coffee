=begin
入力
①正解の単語A
②生徒の回答B
変数N＝正解単語と生徒の解答をいくつ作るかを決める

処理
Bの単語をAと照合し照合結果に応じて点数を判断する

出力
合計点

=end 

N = gets.to_i

answers = []
students = []

N.times do 
answers.push(gets.to_s) 
students.push(gets.to_s)
end

puts answers