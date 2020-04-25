require_relative "produto"
require_relative "mercado"

produto = Produto.new
produto.nome = "arroz"
produto.preco = 2.50

mercado = Mercado.new(produto.nome, produto.preco).comprar
