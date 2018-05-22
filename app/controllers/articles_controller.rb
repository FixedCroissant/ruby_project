class ArticlesController < ApplicationController
	def index
		 # GET ALL ARTICLES
		 @articles = Article.all()
		 #specify articles to get.

		 #find by a where clause, for the title.
     #this result limits by only 1 record, using a loop does not work.
		 #@articles = Article.find_by title: 'Test3'

		 #where information. This provides a list.
		 #@articles = Article.where('title': 'Test3')
			@user = current_user
	end

	  def new
		  @article = Article.new
	  end
	  def edit
	    @article = Article.find(params[:id])
	  end
    def show
      @article = Article.find(params[:id])
			@user = current_user
    end
    def update
      @article = Article.find(params[:id])

        if @article.update(article_params)
            redirect_to @article
        else
            render 'edit'
        end
    end
    def create
       @article = Article.new(article_params)

       if @article.save
          redirect_to @article
        else
          render 'new'
        end
    end

    def destroy
      @article = Article.find(params[:id])
      @article.destroy

      redirect_to articles_path
    end

    def sendMessage
        #call sendtestmessage, that is in the user mailer class.
        UserMailer.test_message.deliver_now()
    
        #Redirect to articles index page.
        redirect_to articles_path
    end


    private
      def article_params
      params.require(:article).permit(:title,:text)
      end
end
