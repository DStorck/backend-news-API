class Article < ApplicationRecord

  def self.create_article(response)
    article = Article.new
    article.title = response["webTitle"]
    article.url = response["webUrl"]
    article.guardian_id = response['id']

    if article.save
      return article
    else
      return nil
    end
  end

  def make_article_instances(json_response)
    @articles = []
    json_response['response']['results'].each do |article|
        @articles.push Article.create_article(article)
    end
    @articles
  end

end
