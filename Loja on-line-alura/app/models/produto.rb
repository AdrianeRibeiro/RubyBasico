class Produto < ApplicationRecord
    belongs_to :setor, optional: true
    validates :preco, presence: true
    validates :nome, length: { minimum: 4}
end
