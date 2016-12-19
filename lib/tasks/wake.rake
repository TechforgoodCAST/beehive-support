namespace :app do
  desc "Wake app"
  task :wake => :environment do
    uri = URI('http://support.beehivegiving.org/en')
    res = Net::HTTP.get_response(uri)
    if res.code == '200'
      puts "App waked at #{Time.now}"
    else
      puts "App failure"
    end
  end
end
