Rails.application.routes.draw do

  get '/'                     => 'articles#welcome'
  get '/section/:topic/:page' => 'articles#by_topic_page'
  get '/section/:topic'       => 'articles#by_topic'
  get '/:keyword/:page'       => 'articles#by_keyword_page'
  get '/:keyword'             => 'articles#by_keyword'

end
