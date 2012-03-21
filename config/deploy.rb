# Add RVM's lib directory to the load path.
$:.unshift(File.expand_path('./lib', ENV['rvm_path']))

# Load RVM's capistrano plugin.    
require "rvm/capistrano"
require "bundler/capistrano"

set :rvm_ruby_string, '1.9.3'
#set :rvm_type, :user  # Don't use system-wide RVM

set :application, "events"
set :repository,  "git@github.com:jasium/events.git"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

set :user, "user"
set :use_sudo, false
set :deploy_to, "/var/www/#{application}"
set :copy_remote_dir, deploy_to
set :branch, "master"
set :domain, "localhost"
ssh_options[:forward_agent] = true

set :scm_verbose, "true"
set :deploy_via, :copy
set :default_environment, {
  'PATH' => "/usr/local/rvm/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"
}

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
		run "cd #{deploy_to}/current && bundle install"
	end
   task :start do ; end
   task :stop do ; end
   task :restart, :roles => :app, :except => { :no_release => true } do
     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
   end
 end
