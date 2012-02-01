set :application, "revol-tech"
set :repository,  "git@github.com:revol-tech/revol-tech.github.com.git"

set :scm, :git
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

set :deploy_to, "/home/deploy/www/revol-tech.com.np"

role :web, "revol-tech.com.np"                          # Your HTTP server, Apache/etc
role :app, "revol-tech.com.np"                          # This may be the same as your `Web` server
role :db,  "revol-tech.com.np", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"

set :user, "deploy"
set :scm_username, 'xecutioner'

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
