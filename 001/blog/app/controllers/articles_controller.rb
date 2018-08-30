class ArticlesController < ApplicationController

    def new
        @article = Article.new
    end

    def show
        @article = Article.find(params[:id])
    end

    #create actionを追加
    def create

        #renderはそのままhtml描画する。便利ね。
        #クエリ文字列返す。
        # render plain: params[:article].inspect

        #Strong Parameters。
        # @article = Article.new(params[:article])

        @article = Article.new(article_params)

        @article.save
        redirect_to @article

    end


    def index
        @articles = Article.all
        #plainで返す
        # render plain: @articles
        #jsonで返す
        # render json: @article
        
        # @articles = Article.paginate(page: params[:page], per_page: 5).order('created_at DESC')
    end


    # private
    def article_params
        #ホワイトリストでチェックし、不正なマスアサインメントを防止
        #titleとtextパラメータの利用を「許可」し、かつ「必須」であることを指定
        params.require(:article).permit(:title, :text)
    end

end

