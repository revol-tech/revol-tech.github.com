default_run_options[:pty] = true
require "bundler/capistrano"
# Add RVM's lib directory to the load path.
$:.unshift(File.expand_path('./lib', ENV['rvm_path']))
# Load RVM's capistrano plugin.
require "rvm/capistrano"

set :application, "revol-tech"
set :repository,  "git@github.com:revol-tech/revol-tech.github.com.git"
set :use_sudo, false  #permission conflict resolve
set :scm, :git

# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

set :deploy_to, "/home/deploy/www/revol-tech.com.np"

role :web, "revol-tech.com.np"                          # Your HTTP server, Apache/etc
role :app, "revol-tech.com.np"                          # This may be the same as your `Web` server
role :db,  "revol-tech.com.np", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"
set :user, "deploy"
set :scm_username, 'xecutioner'
set :bundle_gemfile,  "Gemfile"
  set :bundle_dir,""
  set :bundle_flags,""
  set :bundle_without,      [:development, :test]

ssh_options[:forward_agent] = true
ssh_options[:port] = 2020




set :rvm_ruby_string, '1.9.3'
#set :rvm_type, :user  # Don't use system-wide RVM
#load 'deploy/assets'



# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
 namespace :assets do
  desc "Compress assets in a local file"
  task :compress_assets do
    # from = source.next_revision(current_revision)
    # if capture("cd #{latest_release} && #{source.local.log(from)} app/assets/ | wc -l").to_i > 0
      run_locally("rm -rf public/assets/*")
      run_locally("bundle exec rake assets:precompile")
      run_locally("touch assets.tgz && rm assets.tgz")
      run_locally("tar zcvf assets.tgz public/assets/")
      run_locally("mv assets.tgz public/assets/")
    # else
    #   logger.info "Skipping asset pre-compilation because there were no asset changes"
    # end
  end

  desc "Upload assets"
    task :upload_assets, :roles => [:app] do
      upload("public/assets/assets.tgz", release_path + '/assets.tgz')
      run "cd #{release_path}; tar zxvf assets.tgz; rm assets.tgz"
      run_locally("rm -rf public/assets/*")
    end
end

# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end

before "deploy:update_code", "assets:compress_assets"
after "deploy:update_code", "assets:upload_assets"
after :deploy, 'deploy:cleanup','deploy:migrate', 'deploy:restart'
