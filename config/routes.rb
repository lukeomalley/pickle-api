# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      if Rails.env.development?
        mount GraphiQL::Rails::Engine, at: '/graphiql', graphql_path: 'graphql#execute'
      end
      post '/graphql', to: 'graphql#execute'
    end
  end
end
