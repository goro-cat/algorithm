input_line = gets
strings = input_line.to_s.split('')

convert = []
strings.each do |chara|
  if chara == "A"
    convert.push("4")
  elsif chara == "E" then
    convert.push("3")
  elsif chara == "G" then
    convert.push("6")
  elsif chara == "I" then
    convert.push("1")
  elsif chara == "O" then
    convert.push("0")
  else
    convert.push(chara)
  end
end

output = convert.join
puts output