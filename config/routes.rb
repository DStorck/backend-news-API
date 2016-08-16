Rails.application.routes.draw do

  get '/:keyword/:page'       => 'articles#by_keyword'
  get '/'                     => 'articles#welcome'
  get '/section/:topic/:page' => 'articles#by_topic'

end
