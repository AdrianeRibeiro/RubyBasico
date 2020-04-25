# Ela pode ser guardada em uma variável para ser chamada futuramente com o método call.
first_lambda = lambda { puts "my first lambda"}
first_lambda.call

first_lambda = -> { puts "my first lambda"} # -> substitui o lambda
first_lambda.call

first_lambda = -> (names){ names.each { |name |puts name} }
 names = ["joão", "maria", "pedro"]
 first_lambda.call(names)

 def foo(first_lambda, second_lambda)
    first_lambda.call
    second_lambda.call
end
    
first_lambda = lambda { puts "my first lambda"}
second_lambda = lambda { puts "my second lambda"}
    
foo(first_lambda, second_lambda)