namespace :dev do
  namespace :bootstrap do
    task :views => :environment do |t, args|
      raise "Please provide resource argument" if ARGV.length <= 1
      resource = ARGV.last
      %x{rails generate bootstrap:themed #{resource}}
      task resource.to_sym do ; end
    end
  end
end
