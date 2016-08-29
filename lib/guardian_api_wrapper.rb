require "httparty"

module GuardianAPIWrapper
API_KEY = ENV["GUARDIAN_API_KEY"]
BASE_URL = "http://content.guardianapis.com/search?order-by=newest&api-key=#{API_KEY}"


  def self.section(section)
    initial_response = HTTParty.get(BASE_URL + "&section=" + section)
    return initial_response
  end

  def self.section_by_page(section, page)
    initial_response = HTTParty.get(BASE_URL + "&section=" + section + "&page=" + page )
    return initial_response
  end

  def self.search(keyword)
    initial_response = HTTParty.get(BASE_URL + "&q=" + keyword)
    return initial_response
  end

  def self.search_by_page(keyword, page)
    initial_response = HTTParty.get(BASE_URL + "&q=" + keyword + "&page=" + page)
    return initial_response
  end

end
