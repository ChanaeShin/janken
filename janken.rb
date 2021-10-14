puts "じゃんけん..."

def janken

  puts "[0]グー[1]チョキ[2]パー"

  player_hand = gets.to_i
  program_hand = rand(3)

  jankens = ["グー", "チョキ","パー"]
  puts "ホイ！"
  puts "-----------------"
  puts "あなた:#{jankens[player_hand]}を出しました, 相手:#{jankens[program_hand]}を出しました"
  puts "-----------------"

  if player_hand == program_hand
    puts "あいこで..."
    puts "しょ！"
    puts "-----------------"
  return true
  
  elsif(player_hand == 0 && program_hand == 1)||(player_hand == 1 && program_hand == 2)||(player_hand == 2 && program_hand == 0)
    puts "あなたの勝ちです"
    puts "-----------------"
    @result = "win"
    return false
 
  else
    puts "あなたの負けです"
    puts "-----------------"
    @result = "lose"
    return false
  end

end

next_game = true
  while next_game do
  next_game = janken
  end


if @result == "win"
    puts "あっち向いて..."
    puts "[0]:上 [1]:下 [2]:右 [3]:左"
    
    player_hoi = gets.to_i
    program_hoi = rand(4)
    
    hois = ["上" , "下" , "右" , "左"]
    
    puts "ホイ！"
    
    if player_hoi == program_hoi
        puts "あなた:#{hois[player_hoi]}を指しました,相手:#{hois[program_hoi]}を向きました"
        puts "あなたの勝ち！"
        puts "-----------------"
        
    else
        puts "あなた:#{hois[player_hoi]}を指しました,相手:#{hois[program_hoi]}を向きました"
        puts "引き分け"
        puts "-----------------"
    end
end

if @result == "lose"
    puts "あっち向いて..."
    puts "0:上 1:下 2:右 3:左"
    
    player_hoi = gets.to_i
    program_hoi = rand(4)
    
    hois = ["上" , "下" , "右" , "左"]
    
    puts "ホイ！"
    
    if player_hoi == program_hoi
        puts "あなた:#{hois[player_hoi]}を向きました,相手:#{hois[program_hoi]}を指しました"
        puts "あなたの負け！"
        puts "-----------------"
        
    else
        puts "あなた:#{hois[player_hoi]}を向きました,相手:#{hois[program_hoi]}を指しました"
        puts "引き分け"
        puts "-----------------"
    end
end
