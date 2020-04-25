aulas = {0 => "zero", 1 => "um", 2 => "dois"}

puts "Selecionado Keys com valor maior que 0"
selection_Key = hash.select do |key, value|
    key > 0
end

puts selection_key