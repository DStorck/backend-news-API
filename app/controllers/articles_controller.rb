class ArticlesController < ApplicationController

  def by_topic
    @articles = GuardianAPIWrapper.search(params[:topic])
    @test = "are we working?"
    render json: @articles
  end

end
