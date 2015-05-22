Rails.application.routes.draw do
  get '/' => 'friendly_links#home'
  get '/:id' => 'friendly_links#redirect'
end
