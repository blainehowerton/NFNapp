class ReportsController < ApplicationController

def index
	@articles = Article.where("status" => "private")
	#@articles = Article.order ('web_date DESC')
end

def draft_articles
end

end
