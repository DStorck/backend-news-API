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
end
