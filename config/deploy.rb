lock '3.9.0'

set :application, 'v_studio'
set :repo_url, 'git@github.com:Vintom/studio-sagasu.git'
set :deploy_to, '/var/www/app/v_studio'
set :pty, true
set :git
set :rbenv_ruby, '2.3.1'
set :rbenv_type, :system

after 'deploy:publishing', 'deploy:restart'
namespace :deploy do
  desc 'Restart application'
  task :restart do
    invoke 'unicorn:restart'
  end
end
