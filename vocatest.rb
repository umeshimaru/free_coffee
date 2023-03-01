=begin
入力
①正解の単語A
②生徒の回答B
変数N＝正解単語と生徒の解答をいくつ作るかを決める

処理
Bの単語をAと照合し照合結果に応じて点数を判断する
完全一致２点 answer == student
単語の綴り＋文字数が違う　０点answer == student && !answer.length == student.length
単語の綴りが１文字違う　＋文字数はあっている１点 answer.length == student.length
単語の綴りが２文字以上違う ＋文字数はあっている
出力
合計点

=end 

N = gets.to_i

answers = []
students= []

N.times do 
answers.push(gets.to_s) 
students.push(gets.to_s)
end

#[["apple","appple"]]
a = answers.zip(students)
# ["a","p","p","l","l","e"]
a.map{|b,c| b.chars.}

# answers.each do |answer|
# students.each do |student|






# end
# end
