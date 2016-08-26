require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest

  test "should get index" do
    get "/"
    assert_response :success
  end

  test "should be able to search a keyword" do
    VCR.use_cassette("art-control/article_controller_keyword") do
      get "/food", headers: {"X-backend-news-token": ENV["AUTH_TOKEN"]}
      assert_response :success
    end
  end

  test "should paginate through keyword search" do
    VCR.use_cassette("art-control/article_controller_search2") do
      get "/food/2", headers: {"X-backend-news-token": ENV["AUTH_TOKEN"]}
      assert_response :success
    end
  end

  test "should be search by topic" do
    VCR.use_cassette("art-control/article_controller_topic") do
      get "/section/world", headers: {"X-backend-news-token": ENV["AUTH_TOKEN"]}
      assert_response :success
    end
  end

  test "should paginate through search by topic" do
    VCR.use_cassette("art-control/article_controller_topic4") do
      get "/section/world/4", headers: {"X-backend-news-token": ENV["AUTH_TOKEN"]}
      assert_response :success
    end
  end

  test "should authenticate request" do
    VCR.use_cassette("art-control/article_controller_auth") do
      get "/section/world/4", headers: {"X-backend-news-token": "nope"}
      assert_response 401
    end
  end




end

#
# get '/'                     => 'articles#welcome'
# get '/section/:topic/:page' => 'articles#by_topic_page'
# get '/section/:topic'       => 'articles#by_topic'
# get '/:keyword/:page'       => 'articles#by_keyword_page'
# get '/:keyword'             => 'articles#by_keyword'
