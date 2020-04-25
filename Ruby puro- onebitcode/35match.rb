phrase = "Hellow, how are you?"
match_data = /how/.match(phrase)
puts match_data
puts match_data.pre_match
puts match_data.post_match


phrase = "Hellow, how are you?"
match_data = /oi/.match(phrase)
puts match_data

puts /[1-5]/.match('123')
puts /[1-5]/.match('223')
puts /[a-z]/.match('Oi')
puts /[A-z]/.match('Oi')
puts /A\d/.match('A4')
puts /[0-9]