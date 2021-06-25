input_line = gets#標準入力を行い入力した値を変数に保持
strings = input_line.to_s.split('')#.to_sで値を文字列に変換,split('')で文字列を一文字ずつ配列に格納する,ここに入れた文字で分割を行う

convert = []##空にする
strings.each do |chara|#ループ処理開始
  case chara##caseに指定したものとwhenに指定したものを比較していく形になる＝比較対象が1つの時使用。複数の時はif
  when "A" then
    convert.push("4")#文字列を格納するconvertの配列に格納していく.pushは配列の要素を追加するメゾッド
  when "E" then
    convert.push("3")
  when "G" then
    convwet.push("6")
  when "I" then
    convert.push("1")
  when "O" then
    convert.push("0")
  else
    convert.push(chara)#ブロック変数そのまま出す
  end
end

output = convert.join##joinメゾッドは配列の要素を連結して文字列を作り出すこと(くっつける)ouput_strには文字列置き換え後の配列の要素を連結して文字列としたものが代入
puts output##最後にouput_strを標準出力