namespace :cluster_mgmt do
  namespace :bootstrap do
    task :user => :environment do |t, args|
      @user = User.find_by_username('admin')

      unless @user
        @user = User.create do |u|
          u.username = 'admin'
          u.email = 'admin@example.com'
          u.password = 'Password1'
          u.password_confirmation = 'Password1'
        end
        @user.save(:validate => false)
      end
    end
  end
end
