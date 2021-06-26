input_line = readlines#sを忘れないこと。複数行で入力できなくなります。

room = input_line[0].to_i##0番目に室温を格納
air_condition = input_line[1].to_i##1番目に設定温度を格納
air_win = input_line[2].to_i##2番目に風量を格納

temperature_diff = (room-air_condition).abs##0と1の差を絶対値に設定。.は使えないのかもしれない。

require_time = 0##設定温度になる時間を初期化

if temperature_diff < 5
  require_time = 15
elsif temperature_diff >=5 && temperature_diff < 10 then#thenを忘れない。
  require_time = 30
elsif temperature_diff >= 10 then#then忘れない。
  require_time = 60
end

#if air_win = 1
#  require_time
#elsif air_win = 2
#  require_time = require_time - 5
#elsif air_win = 3
#  require_time = require_time - 10
#else 
#  p "風量は1~3に設定してください"
#exit
#end

#p require_time

case air_win##風量についての場合です～って
when air_win = 1 then###air_winなくてもOK。then忘れずに
  require_time
when air_win = 2 then
  require_time = require_time-5
when air_win = 3 then
  require_time = require_time-10
else
  p "風量は1~3に設定してください"
  exit##プログラムの終了
end

p require_time