server '52.35.56.27',
  user: 'deploy',
  roles: %w{web app db}
  
set :stage, :production
set :branch, 'master'
set :rails_env, 'production'
