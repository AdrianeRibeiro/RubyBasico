class ProdutosController < ApplicationController

    before_action :set_produto, only: [:edit, :update, :destroy]
 
    def index
        @produtos = Produto.order(nome: :asc).limit 5
        @produto_com_desconto = Produto.order(:preco).limit 1
    end

    def new
        @produto = Produto.new
        @setores = Setor.all
    end

    def edit
        renderiza :edit
        #id = params[:id]
        #@produto = Produto.find(id)
        #@setores = Setor.all
        #render :new
    end

    def update
        #id = params[:id]
        #@produto = Produto.find(id)
        #@setores = Setor.all
        #valores = params.require(:produto).permit(:nome, :descricao, :preco, :quantidade, :setor_id)
        if @produto.update produto_params #@produto.update valores
            flash[:notice] = "Produto atualizado com sucesso!"
            redirect_to root_url
        else
            renderiza :edit
            #@setores = Setor.all
            #render :new
        end
    end

    def create
        #valores = params.require(:produto).permit(:nome, :descricao, :preco, :quantidade, :setor_id)
        @produto = Produto.new produto_params # @produto = Produto.new valores 
        if @produto.save
            flash[:notice] = "Produto salvo com sucesso!"
            redirect_to root_url
        else
            renderiza :new
            #@setores = Setor.all
            #render :new
        end
    end

    def destroy
        @produto.destroy
        #Produto.destroy id
        redirect_to root_url
    end

    def busca
        @nome = params[:nome]
        @produtos = Produto.where "nome like? ", "%#{@nome}%"
    end

    private

    def produto_params
        valores = params.require(:produto).permit(:nome, :descricao, :preco, :quantidade, :setor_id)
    end

    def set_produto
        @produto = Produto.find(params[:id])
    end

    def renderiza(view)
        @setores = Setor.all
        render view
    end

end
