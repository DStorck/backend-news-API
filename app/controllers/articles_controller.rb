require "#{Rails.root}/lib/guardian_api_wrapper"

class ArticlesController < ApplicationController

  def by_topic
    @articles = GuardianAPIWrapper.section(params[:topic])
    render json: @articles
  end

  def by_keyword
    @articles = GuardianAPIWrapper.search(params[:keyword])
    render json: @articles
  end

  def welcome
    render json: "Welcome to the backend."
  end

end
