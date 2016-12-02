namespace :app do
  desc "Wake app"
  task :wake => :environment do
    puts "App waked at #{Time.now}"
  end
end
