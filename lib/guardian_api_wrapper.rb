require "httparty"

module GuardianAPIWrapper
API_KEY = ENV["GUARDIAN_API_KEY"]
BASE_URL = "http://content.guardianapis.com/search?api-key=#{API_KEY}&section="
# BASE_URL = "http://content.guardianapis.com/search?section=world&api-key=#{API_KEY}"

  def self.search(section)
    @articles = []
    initial_response = HTTParty.get(BASE_URL + section)
    
    initial_response['response']['results'].each do |article|
      @articles.push Article.create_article(article)
    end
    @articles
  end

end
