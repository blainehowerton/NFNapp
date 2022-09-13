class ReportsController < ApplicationController
	  before_action :authenticate_user!

def index
	@articles = Article.order(web_date: :desc).where("status" => "private")
end

def draft_articles
end

end
