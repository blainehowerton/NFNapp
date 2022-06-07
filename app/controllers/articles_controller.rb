class ArticlesController < ApplicationController
  
  http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]


  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
    @editions = Edition.all
  end

  def new
    @article = Article.new
    @editions = Edition.all
  end

  def create
    @article = Article.new(article_params)
    @article.print_date = params[:print_date]

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @article = Article.find(params[:id])
    @editions = Edition.all
    @sections = Section.all
  end

  def update
    @article = Article.find(params[:id])
    @article.print_date = params[:print_date]
    @article.section_id = params[:section_id]

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path, status: :see_other
  end

  private
    def article_params
      params.require(:article).permit(:title, :body, :status, :print_date, :web_date, :section_id, :wordpress_url)
    end
end
