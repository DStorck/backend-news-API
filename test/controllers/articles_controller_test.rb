require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest

  test "should get index" do
    get "/"
    assert_response :success
  end

  test "should be able to search a keyword" do
    VCR.use_cassette("art-control/article_controller") do
      get "/food", headers: {"X-backend-news-token": ENV["AUTH_TOKEN"]}
      assert_response :success
    end
  end


end

#
# get '/'                     => 'articles#welcome'
# get '/section/:topic/:page' => 'articles#by_topic_page'
# get '/section/:topic'       => 'articles#by_topic'
# get '/:keyword/:page'       => 'articles#by_keyword_page'
# get '/:keyword'             => 'articles#by_keyword'
