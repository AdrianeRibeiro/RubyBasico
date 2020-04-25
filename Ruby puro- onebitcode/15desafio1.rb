numeros = []
x = 0

while (x < 3)
    puts "Digite o #{x + 1}ª número: "
    numero = gets.chomp.to_i
    numeros.insert(x, numero)
    x += 1
end

puts numeros[0]
puts numeros[1]
puts numeros[2]

numeros.map! do |a|
    a ** 2
end

puts numeros