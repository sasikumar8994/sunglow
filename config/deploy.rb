# config valid only for Capistrano 3.1
lock '3.4.0'

set :application, 'Sunglow'
set :repo_url, 'git@github.com:sasikumar8994/sunglow.git'
set :scm, :git
set :ssh_options,   forward_agent: true
set :format, :pretty
set :log_level, :debug
set :pty, true

# set :linked_files, %w{config/database.yml, config/secrets.yml}
set :linked_files, fetch(:linked_files, []).push('config/database.yml')
set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}
set :use_sudo, true
# set :default_env, { path: "/opt/ruby/bin:$PATH" }
 set :keep_releases, 5

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # Your restart mechanism here, for example:
      # execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

  after :finishing, 'deploy:cleanup'

end
