#以下「じゃんけん」の処理
class Janken
  def initialize
    puts "じゃんけん・・・"
    puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"
    my_dec = gets.chomp.to_i
    com_1 = Random.new
    com_dec = com_1.rand(3).to_i
    decision = ["グー","チョキ","パー","戦わない"]
    decision_com = ["グー","チョキ","パー"]
    if my_dec.to_i == 3
      puts "終了します"
      exit
    end
    puts "ポイ！"
    puts "--------------------------------------"
    puts "あなた：#{decision[my_dec]}を出しました"
    puts "相手：#{decision_com[com_dec]}を出しました"
    puts "--------------------------------------"
    if my_dec == com_dec
      puts "あいこです"
      Janken.new
    elsif (my_dec == 0) && (com_dec == 1)
      puts "あなたの勝ちです"
      Ach_hoi_win.new
    elsif (my_dec == 0) && (com_dec == 2)
      puts "あなたの負けです"
      Ach_hoi_los.new
    elsif (my_dec == 1) && (com_dec == 0)
      puts "あなたの負けです"
      Ach_hoi_los.new
    elsif (my_dec == 1) && (com_dec == 2)
      puts "あなたの勝ちです"
      Ach_hoi_win.new
    elsif (my_dec == 2) && (com_dec == 0)
      puts "あなたの勝ちです"
      Ach_hoi_win.new
    elsif (my_dec == 2) && (com_dec == 1)
      puts "あなたの負けです"
      Ach_hoi_los.new
    end
  end
end
#以上「じゃんけん」の処理

#以下「じゃんけん勝ち→あっちむいてホイ」の処理
class Ach_hoi_win
  def initialize
  puts "あっちむいて〜"
  puts "0(上) 1(右) 2(左) 3(下)"
  my_dec_1 = gets.chomp.to_i
  com_1_1 = Random.new
  com_dec_1 = com_1_1.rand(4).to_i
  decision_1 = ["上","右","下","左"]
  decision_com_1 = ["上","右","下","左"]
  puts "ホイ！"
  puts "--------------------------------------"
  puts "あなた：#{decision_1[my_dec_1]}を指しました"
  puts "相手：#{decision_com_1[com_dec_1]}を向きました"
  puts "--------------------------------------"
    if my_dec_1 == com_dec_1
      puts "あなたの勝ちです"
      puts "終了します"
    else 
      puts "じゃんけんに戻ります"
      Janken.new
    end
  end
end
#以上「じゃんけん勝ち→あっちむいてホイ」の処理

#以下「じゃんけん負け→あっちむいてホイ」の処理
class Ach_hoi_los
  def initialize
  puts "あっちむいて〜"
  puts "0(上) 1(右) 2(左) 3(下)"
  my_dec_2 = gets.chomp.to_i
  com_1_2 = Random.new
  com_dec_2 = com_1_2.rand(4).to_i
  decision_2 = ["上","右","下","左"]
  decision_com_2 = ["上","右","下","左"]
  puts "ホイ！"
  puts "--------------------------------------"
  puts "あなた：#{decision_2[my_dec_2]}を向きました"
  puts "相手：#{decision_com_2[com_dec_2]}を指しました"
  puts "--------------------------------------"
    if my_dec_2 == com_dec_2
      puts "あなたの負けです"
      puts "終了します"
    else 
      puts "じゃんけんに戻ります"
      Janken.new
    end
  end
end
#以上「じゃんけん負け→あっちむいてホイ」の処理

Janken.new