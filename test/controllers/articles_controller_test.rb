require 'test_helper'

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  # setup do
  #   @params = {
  #     keyword: "food",
  #     page: 3,
  #     topic: "world"
  #   }
  # end

  test "should get index" do
    get "/"
    assert_response :success
  end

  test "should be able to search a keyword" do
    get "/:keyword", params: {keyword: "food"}
    assert_response :success
  end

end

#
# get '/'                     => 'articles#welcome'
# get '/section/:topic/:page' => 'articles#by_topic_page'
# get '/section/:topic'       => 'articles#by_topic'
# get '/:keyword/:page'       => 'articles#by_keyword_page'
# get '/:keyword'             => 'articles#by_keyword'
