#instalando a gem gem install cpf_cnpj
require "cpf_cnpj"
 
def check_cpf(cpf_number)
    if CPF.valid?(cpf_number)
        puts "O cpf informado é valido"
    else
        puts "O cpf informado é invalido"
    end
end
 
print 'Digite seu cpf: '
cpf_number = gets.chomp.to_i
 
result = check_cpf(cpf_number)
 
puts result