require 'csv'

puts "1 → 新規でメモを作成する / 2 → 既存のメモを編集する"
 
memo_type = gets.to_i # ユーザーの入力値を取得し、数字へ変換しています

#新規メモで作成
if memo_type == 1
    p "拡張子を除いたファイルを入力してください"
       name = $stdin.gets.chomp
       CSV.open("#{name}.csv", "w") do |test|
       p "メモしたい内容を記入してください"
       p "入力が終わったらCtrl+D、enter,Ctrl+Dの順番に押してください"
       test<<$stdin.readlines(chomp: true)
       end
      
#既存のメモの編集  
elsif memo_type == 2
    p "拡張子を除いたファイルを入力してください２"
    name = $stdin.gets.chomp
    CSV.open("#{name}.csv", "a") do |test|
       p "メモしたい内容を記入してください"
       p "入力が終わったらCtrl+D、enter,Ctrl+Dの順番に押してください"
       test<<$stdin.readlines(chomp: true)
       end

else 
    p"不正な値です、もう一度やり直してください"
    
end

