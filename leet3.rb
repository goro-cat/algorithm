def convert_leet(chara)##条件分岐による処理をconvert_leet(chara)というメゾットにしている
##引数に文字列を与えることで条件に応じた文字列を返すメゾッド
  case chara
  when "A" then
    "4"
  when "E" then
    "3"
  when "G" then
    "6"
  when "I" then
    "1"
  when "O" then
    "0"
  else
    chara
  end
end

input = gets##入力
strings = input.to_s.split('')##文字列＋一文字ずつ配列に格納

convert = []#空にする

strings.each do |chara|##一文字ずつ分割したstringsという配列をeachでループ処理してcharaというブロック変数に因数を与え、帰ってきた文字列を文字列用の配列convertに追加していく
  convert.push(convert_leet(chara))##メゾッドを使用
end

output = convert.join
puts output
