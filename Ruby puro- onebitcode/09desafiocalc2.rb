result = ""

loop do
    puts result
    puts "Selecione uma das operações: "
    puts "1- +: "
    puts "2- -: "
    puts "3- *: "
    puts "4- /: "
    puts "0- Sair: "
    print "Opção selecionada: "
    option = gets.chomp.to_i

    if option == 0
        break
    elsif option > 5
        result = "Opção inválida"
        break
    end
    
    puts "Digite o primeiro número: "
    number1 = gets.chomp.to_i
    puts "Digite o segundo número: "
    number2 = gets.chomp.to_i
    
    if option == 1
        result = "#{number1} + #{number2} = #{number1 + number2}"
    elsif option == 2
        result = "#{number1} - #{number2} = #{number1 - number2}"
    elsif option == 3
        result = "#{number1} * #{number2} = #{number1 * number2}"
    else 
        result = "#{number1} / #{number2} = #{number1 / number2}"
    end
    
    system "clear"
end