require "httparty"

module NYTimesAPIWrapper
API_KEY = ENV["NYTIMES_API_KEY"]
BASE_URL = "http://api.nytimes.com/svc/search/v2/articlesearch.json?api-key=#{API_KEY}"

  #hoping to implement this in the future
  
  # def self.times_search(search_term)
  #   uri = URI("https://api.nytimes.com/svc/search/v2/articlesearch.json")
  #   http = Net::HTTP.new(uri.host, uri.port)
  #   http.use_ssl = true
  #   uri.query = URI.encode_www_form({
  #     "api-key" => "bf414bdd57594a0a8db5209babee4fe8",
  #     "q" => search_term
  #   })
  #   request = Net::HTTP::Get.new(uri.request_uri)
  #   @result = JSON.parse(http.request(request).body)
  #   return @result
  #
  # end

end
