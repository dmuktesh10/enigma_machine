text_array = 'muktesh'.split('')
new_array = []
original_ip = ('a'..'z').to_a
rotar1 = original_ip.dup
rotar2 = original_ip.dup
rotar3 = original_ip.dup
rotation1 = 2#(1+rand(26))
rotation2 = 3#(1+rand(26))
rotation3 = 15#(1+rand(26))
rotar1.rotate!(rotation1)
rotar2.rotate!(rotation2)
rotar3.rotate!(rotation3)
code = rotation1.to_s + rotation2.to_s + rotation3.to_s
puts "This is your code:" + code
puts 'noraml: ' + original_ip.join('')

puts 'rotar1: ' + rotar1.join('')
puts 'rotar2: ' + rotar2.join('')
puts 'rotar3: ' + rotar3.join('')
text_array.each do |char|
  index = original_ip.index(char)
  r1_op_char = rotar1[index]
  index1 = rotar1.index(r1_op_char)
  r2_op_char = rotar2[index1]
  index2 = rotar2.index(r2_op_char)
  r3_op_char =rotar3[index2]
  index3 = rotar3.index(r3_op_char)
  new_array << r3_op_char
  rotar1.rotate!(1)
  rotation1 = rotation1 +1
  if(rotation1%26==0)
    rotar2.rotate!(1)
    rotation2 = rotation2 + 1
  end
  if(rotation2%26==0)
    rotar3.rotate!(1)
    rotation3 = rotation3 + 1
  end
puts 'rotar1: ' + rotar1.join('')
puts 'rotar2: ' + rotar2.join('')
puts 'rotar3: ' + rotar3.join('')
puts 'char:' + char + ' become: ' + r3_op_char
end
puts new_array.join('')
