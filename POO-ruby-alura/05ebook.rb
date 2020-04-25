require_relative "05produto" 

class Ebook < Produto

    def matches?(query)
       ["ebook", "digital"].include?(query) 
    end
end

