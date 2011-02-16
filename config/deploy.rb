set :application, "set your application name here"
set :repository,  "set your repository location here"

set :scm, :subversion
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "your web-server here"                          # Your HTTP server, Apache/etc
role :app, "your app-server here"                          # This may be the same as your `Web` server
role :db,  "your primary db-server here", :primary => true # This is where Rails migrations will run
role :db,  "your slave db-server here"

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end


# Then the config/deploy.rb needs to be worked on. This is where you set
# up the configuration for how to deploy the site. There are many settings
# that need to be set, such as the application, the repository, and the
# roles available (I just set the roles to the same thing). In addition I
# use git for source control of this site, so some of my settings are:
# 
# set :deploy_to, "/var/www/#{application}"
# set :deploy_via, :export
# set :scm, :git
# set :shared_children, []
# 
# Using the export deployment method means that there is no .git directory
# hanging around on the server for people to muck around with. Setting the
# shared_children variable to an empty array means that no shared
# directories are present on the site. While this isn’t essential, I use
# it so that no superfluous directories are created.
# 
# In addition to these settings, a couple of small task definitions need
# to be included in the config/deploy.rb file, namely:
# 
# namespace :deploy do
#   task :update do
#     transaction do
#       update_code
#       build_code
#       symlink
#     end
#   end
#  
#   task :build_code, :except => { :no_release => true } do
#     run "staticmatic build #{latest_release}"
#   end
# end
# These tasks are necessary to build the site on the server, with the
# first task redefining the deployment task so that the code is built at
# the appropriate stage, and the second task doing the actual building
# of the site.

