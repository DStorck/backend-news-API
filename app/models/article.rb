class Article < ApplicationRecord

  def create_article(response)
    article = Article.new
    event.title = response["title"]
    event.uid = response["id"]
    event.url = response["webUrl"]

    if event.save
      return event
    else
      return nil
    end
  end
end
