require "sidekiq/web"

Rails.application.routes.draw do
    # authenticate :user, lambda { |u| u.admin? } do
    mount Sidekiq::Web => "/sidekiq"
  # end

  devise_for :users, path: "", path_names: {
    sign_in: "login",
    sign_out: "logout",
    registration: "signup",
    confirmation: "confirm"
  },
  controllers: {
    sessions: "users/sessions",
    registrations: "users/registrations"
  }
end
