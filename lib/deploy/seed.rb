namespace :deploy do
  desc "reload the database with seed data"
  task :seed do
    invoke "bundle exec rake db:seed RAILS_ENV=fetch(:rails_env)"
  end
end