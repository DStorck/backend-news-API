require "#{Rails.root}/lib/guardian_api_wrapper"

class ArticlesController < ApplicationController
  # before_action :authenticate, except: [ :welcome ]

  def by_topic
    @json_articles = GuardianAPIWrapper.section(params[:topic])
    @articles = Article.create_array_from_json_response(@json_articles)
    render json: @articles
  end

  def by_topic_page
    @json_articles = GuardianAPIWrapper.section_by_page(params[:topic], params[:page])
    @articles = Article.create_array_from_json_response(@json_articles)
    render json: @articles
  end

  def by_keyword
    @json_articles = GuardianAPIWrapper.search(params[:keyword])
    @articles = Article.create_array_from_json_response(@json_articles)
    render json: @articles
  end

  def by_keyword_page
    @json_articles = GuardianAPIWrapper.search_by_page(params[:keyword], params[:page])
    @articles = Article.create_array_from_json_response(@json_articles)
    render json: @articles
  end

  def welcome
    render json: "Welcome to the backend."
  end

  # want to add this in the future
  # def times
  #   @response = NYTimesAPIWrapper.times_search("soccer")
  #   render json: @response
  # end


  protected

  def authenticate
    unless ENV["AUTH_TOKEN"] == request.headers["X-backend-news-token"]
    render json: "You must provide a valid authenticity token to access this site.", status: 401

    end
  end

end
