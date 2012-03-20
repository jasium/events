require 'bundler/capistrano'
set :application, "events"
set :repository,  "git@github.com:jasium/events.git"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

set :user, "user"
set :deploy_to, "/var/www/#{application}"
set :branch, "master"
set :domain, "localhost"
ssh_options[:forward_agent] = true

set :scm_verbose, "true"
set :deploy_via, :copy

role :web, "localhost"                          # Your HTTP server, Apache/etc
role :app, "localhost"                          # This may be the same as your `Web` server
role :db,  "localhost", :primary => true # This is where Rails migrations will run

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
after "deploy", "deploy:bundle_gems"
after "deploy:bundle_gems", "deploy:restart"
 namespace :deploy do
	task :bundle_gems do
		run "cd #{deploy_to}/current && PATH=/home/user/.rvm/gems/ruby-1.9.3-p125/bin:/home/user/.rvm/gems/ruby-1.9.3-p125@global/bin:/home/user/.rvm/rubies/ruby-1.9.3-p125/bin:/home/user/.rvm/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/user/.rvm/bin bundle install vendor/gems"
	end
   task :start do ; end
   task :stop do ; end
   task :restart, :roles => :app, :except => { :no_release => true } do
     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
   end
 end
