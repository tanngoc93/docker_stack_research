require 'sidekiq/web'

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Sidekiq::Web.use Rack::Auth::Basic do |username, password|
  #   ActiveSupport::SecurityUtils.secure_compare(::Digest::SHA256.hexdigest(username), "sidekiq") &
  #     ActiveSupport::SecurityUtils.secure_compare(::Digest::SHA256.hexdigest(password), "sidekiq")
  # end
  mount Sidekiq::Web, at: "/sidekiq"

  # Defines the root path route ("/")
  # root "articles#index"
end
