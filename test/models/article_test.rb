require 'test_helper'

class ArticleTest < ActiveSupport::TestCase

  describe "article model", :vcr do

    before do
      @json = GuardianAPIWrapper.section("world")
      @article_array = Article.create_array_from_json_response(@json)
    end

    it "should can create articles given proper info" do
      @info = {"title": "this is a new article!", "url": "http://fakeurl"}
      @article = Article.new(@info)
      assert_instance_of Article, @article
    end

    it "can create array of json objects when passed json from guadian api" do
      assert_instance_of Array, @article_array
    end

    it "can make instances of Article given an array of json objects" do
      @article = @article_array[0]
      assert_instance_of Article, @article

    end

  end

end
