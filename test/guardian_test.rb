require 'test_helper'

class GuardianApiWrapperTest < ActiveSupport::TestCase

  describe "GuardAPIWrapper" , :vcr do

    before do
      @world_section = GuardianAPIWrapper.section("world")
      @seattle_search = GuardianAPIWrapper.search("seattle")
    end

    it "returns json data for articles when given a valid search term" , :vcr do
      @types = ["article", "liveblog"]
      @world = @world_section["response"]["results"][0]["type"]
      @seattle = @seattle_search["response"]["results"][0]["type"]
      assert_includes @types, @world
      assert_includes @types, @seattle
      # world_articles = @world_section.count
      # seattle_articles = @seattle_search.count
      # assert_equal world_articles, 1
      # assert_equal seattle_articles, 1
    end

    it "can ask for a specific page of results", :vcr do
      @seattle2 = GuardianAPIWrapper.search_by_page("seattle", "3")
      @page = @seattle2["response"]["currentPage"]
      assert_equal 3, @page
    end




    # it "returns suggestions that contain food_ids", :vcr do
    #   refute_nil @pizza_pairing["suggestions"].first["food_id"]
    # end
    #
    # it "returns suggestions that contain music ids", :vcr do
    #   refute_nil @pizza_pairing["suggestions"].first["music_id"]
    # end
    #
    # it "returns suggestions that contain music types", :vcr do
    #   refute_nil @pizza_pairing["suggestions"].first["music_type"]
    # end
    #
    # it "will return top 20 choices to index", :vcr do
    #   assert_equal @top_twenty.class, Array
    #   assert_equal @top_twenty.count, 20
    #   assert_equal @top_twenty.last.class, Hash
    #   refute_nil @top_twenty.last["food_id"]
    # end
    #
    # it "can create an array of suggestion of ids out of the API response", :vcr do
    #   assert_equal @favorite_id_array.class, Array
    # end
    #
    # it "can favorite a suggestion" , :vcr do
    #   @original_count = @favorite_id_array.count
    #   TunesTakeoutWrapper.favorite('dronaldson', "Vz92VPLW7wADpNDB")
    #   @new_count = TunesTakeoutWrapper.favorite_ids("dronaldson").count
    #
    #   assert_equal (@original_count + 1), @new_count
    # end
    #
    # it "can unfavorite a suggestion", :vcr do
    #   TunesTakeoutWrapper.favorite('dronaldson', "Vz9hW_LW7wADpMt8")
    #   @original_count = @favorite_id_array.count
    #   TunesTakeoutWrapper.unfavorite('dronaldson', "Vz9hW_LW7wADpMt8")
    #   @new_count = TunesTakeoutWrapper.favorite_ids("dronaldson").count
    #   assert_equal (@original_count - 1), @new_count
    # end

  end
end
