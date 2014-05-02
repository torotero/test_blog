class ArticlesController < ApplicationController
	def new
		@article=Article.new
	end


	def index
		@articles = Article.all
	end


	def create
		 #render plain: params[:article].inspect
		 #buat ngeliat isi pake inspect

		 @article = Article.new(article_params)
		 
		 # Article sesuai nama kelasnya Article
		 # klo nama tabelnya = articles

		if @article.save
		 redirect_to @article
		else
			render 'new'

			#kegunaan render= class @articles di kirim balik ke page setelah gagal pengecekan.
		end


	end


	def show
		@article = Article.find(params[:id])
	end





	private

	def article_params
		params.require(:article).permit(:title,:text)
		
	end


	

end
