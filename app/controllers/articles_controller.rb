require "#{Rails.root}/lib/guardian_api_wrapper"

class ArticlesController < ApplicationController

  def by_topic
    @json_articles = GuardianAPIWrapper.section(pararms[:topic])
    @instances = Article.create_article(@json_articles)
    render json: @instances

  end


  #real
  # def by_topic
  #   @articles = GuardianAPIWrapper.section(params[:topic])
  #   render json: @articles
  # end

  def by_topic_page
    @json_articles = GuardianAPIWrapper.section_by_page(params[:topic], params[:page])
    @instances = Article.create_article(@json_articles)
    render json: @instances
  end

  def by_keyword
    @json_articles = GuardianAPIWrapper.search(params[:keyword])
    @instances = Article.create_article(@json_articles)
    render json: @instances
  end

  def by_keyword_page
    @json_articles = GuardianAPIWrapper.search_by_page(params[:keyword], params[:page])
    @instances = Article.create_article(@json_articles)
    render json: @instances
  end

  def welcome
    render json: "Welcome to the backend."
  end

end
