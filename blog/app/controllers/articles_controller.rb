class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    #
    # Rails will pass all instance variables to the view
    #
    #    hence, define a instance varialbe @article here
    #    then, rails will pass @article to the view
    @article = Article.find(params[:id])
  end

   def new
     @article = Article.new
   end

   def create
      # @article = Article.new(params[:article])
      #    params[:article] is a 'mass assign'
      #    which might have security concern


      @article = Article.new(article_params)

      # save to database
      if @article.save
        redirect_to @article
      else
        # the render method is used, so that @article object is passed back
        #  to the 'new' template when it is rendered
        render 'new'
      end
   end

   # put the params' permit into a private method, so
   #
   #  1) CRUD in this controller can all access it
   #  2) private makes no one else can access it
   #
   private
     def article_params
       params.require(:article).permit(:title, :text)
     end
end
