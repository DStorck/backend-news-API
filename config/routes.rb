Rails.application.routes.draw do
  get '/:topic' => 'articles#by_topic'
end
