Rails.application.routes.draw do
  get '/section/:topic' => 'articles#by_topic'
  get '/:keyword'       => 'articles#by_keyword'
  get '/'               => 'articles#welcome'
end
