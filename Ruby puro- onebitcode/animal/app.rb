require_relative 'animal' #traz todo o código de animal
require_relative 'cachorro' #traz todo o código de cachorro

puts '--Animal--'
animal = Animal.new
animal.pular
 
puts '--Cachorro--'
cachorro = Cachorro.new
cachorro.pular
cachorro.latir