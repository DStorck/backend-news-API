class ArticlesController < ApplicationController

  def by_topic
    @articles = GuardianAPIWrapper.search(params[:term])
    render :index
  end

end
