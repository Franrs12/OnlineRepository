Rails.application.routes.draw do
  get '/' => 'contacts#index'
  get '/contacts/:id' => 'contacts#show'
  get '/contacts/:contact_id/numbers' => 'contacts#contacts_by_letter'
end
