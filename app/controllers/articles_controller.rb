require "#{Rails.root}/lib/guardian_api_wrapper"

class ArticlesController < ApplicationController

  def by_topic
    @articles = GuardianAPIWrapper.section(params[:topic])
    render json: @articles
  end

  def by_topic_page
    @articles = GuardianAPIWrapper.section_by_page(params[:topic], params[:page])
    render json: @articles
  end

  def by_keyword
    @articles = GuardianAPIWrapper.search(params[:keyword])
    render json: @articles
  end

  def by_keyword_page
    @articles = GuardianAPIWrapper.search_by_page(params[:keyword], params[:page])
    render json: @articles
  end

  def welcome
    render json: "Welcome to the backend."
  end

end
