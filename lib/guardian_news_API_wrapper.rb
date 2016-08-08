require "httparty"
module GuardianAPIWrapper
API_KEY = ENV['GUARDIAN_API_KEY']
BASE_URL = "http://content.guardianapis.com/search?api-key=#{API_KEY}&section="
# BASE_URL = "http://content.guardianapis.com/search?section=world&api-key=#{API_KEY}"

  def self.search(section)
    @articles = []
    initial_response = HTTParty.get(BASE_URL + section, format: :json)
    initial_response.each do |article|
      @articles.push articles
    end
    @event_instances
  end

end
