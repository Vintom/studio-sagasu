set :branch, ENV['BRANCH'] if ENV['BRANCH']
set :pty, true
server '160.16.204.145',
  user: 'root',
  roles: %w{app db web},
  ssh_options: {
   auth_methods: %w(password),
   password: 'sagasu.space'
  }

set :linked_dirs, %w{bin log tmp/backup tmp/pids tmp/sockets vendor/bundle}

set :unicorn_pid, "/var/www/app/v_studio/shared/tmp/pids/unicorn.pid"
set :unicorn_exec, -> { "unicorn_rails" }
