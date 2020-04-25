array = [1,2,3,4]

new_array = array.map do |a|
    a * 2
end

puts "\n Array Original"
puts "#{array}"


puts "\n Novo Array"
puts "#{new_array}"

array.map! do |a|
    a * 2
end

puts "\n Array Original modificado"
puts "#{array}"
