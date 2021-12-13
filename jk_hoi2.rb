puts "じゃんけん..."

#じゃんけん
def janken
  puts "0(グー)1(チョキ)2(パー)3(戦わない)"
  player_hand = gets.to_i #getsメソッドはキーボードで入力した文字列を取得
  program_hand = rand(4) #0以上4未満の整数をランダムで返す

  puts "ホイ！"
  puts "--------------"

  case player_hand
  when 0
    puts "あなた:グーを出しました"
  when 1
    puts "あなた:チョキを出しました"
  when 2
    puts "あなた:パーを出しました"
  when 3
    puts "戦いはやめましょう。じゃんけんを終了します"
    exit
  else
    puts "0~3までの数字を入力してください"
    puts "----------------"
    return true
  end

  case program_hand
  when 0
    puts "相手:グーを出しました"
  when 1
    puts "相手:チョキを出しました"
  when 2
    puts "相手:パーを出しました"
  when 3
    puts "相手は戦うのを拒否しました。じゃんけんを終了します"
    exit
  else
    puts "相手は出す手を間違えました。もう1度0~3までの数字を入力してください"
    puts "----------------"
    return true 
  end

  if player_hand == program_hand #あいこだった場合、jankenまでの処理をループ
    puts "あいこで..."
    janken
    return true
  elsif(player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)
    puts "(あなたの勝ちです)"
    game = "win"
  else
    puts "(あなたの負け!)"
    game = "lose"
  end
  
  puts "あっち向いて〜"
  puts "0(上)1(下)2(左)3(右)"
  player_directions = gets.to_i
  program_directions = rand(4)
  
  direction = ["上","下","左","右"]
  puts "ホイ！" 
  puts "--------------------"
  puts "あなた:#{direction[player_directions]}" #directionの配列の中のplayerが選択した番号を表示
  puts "相手:#{direction[program_directions]}"
  puts "--------------------"

  if player_directions == program_directions && game == "win" #じゃんけんに勝った時
    puts "あなたの勝ちです！"
    return false
  elsif player_directions == program_directions && game == "lose" #じゃんけんに負けた時
    puts "あなたの負けです.."
    return false
  else
    puts "じゃんけん..."
    janken
    return false 
  end
end

next_game = true

while next_game
  next_game  = janken
end