lock '3.11.0'

set :application, 'v_studio'
set :repo_url, "https://#{ENV['git_user']}:#{ENV['git_password']}@github.com/Vintom/studio-sagasu.git"
set :deploy_to, '/var/www/app/v_studio'
set :pty, true
set :git
set :rbenv_ruby, '2.3.1'
set :rbenv_type, :system
set :whenever_identifier, ->{ "#{fetch(:application)}_#{fetch(:stage)}" }

after 'deploy:publishing', 'deploy:restart'
namespace :deploy do
  desc 'Restart application'
  task :restart do
    invoke 'unicorn:restart'
  end
end
