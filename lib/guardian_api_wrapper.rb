require "httparty"

module GuardianAPIWrapper
API_KEY = ENV["GUARDIAN_API_KEY"]
BASE_URL = "http://content.guardianapis.com/search?order-by=newest&api-key=#{API_KEY}"


  def self.search(keyword, page)
    @articles = []
    initial_response = HTTParty.get(BASE_URL + "&page=" + page + "&q=" + keyword)

    initial_response['response']['results'].each do |article|
      @articles.push Article.create_article(article)
    end
    @articles
  end

  def self.section(section, page)
    @articles = []
    initial_response = HTTParty.get(BASE_URL + "&section=" + section + "&page=" + page )
    initial_response['response']['results'].each do |article|
      @articles.push Article.create_article(article)
    end
    @articles
  end

end
