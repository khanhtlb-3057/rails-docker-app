namespace :user do
  desc "Create users"

  task create_users: :environment do
    puts "RUNNING rake user:create_users"
    user = User.create name: "hello"
    puts "CREATED user: #{user.inspect}"
  end
end
