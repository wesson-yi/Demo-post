require 'yaml'

namespace :db do
  desc "create 1,000 random users"
  task create_users: :environment do
    # REVIEW: 名字需要随机，且不重复吗
    user_names = YAML.load_file File.join(Rails.root, 'config/users.yml')
    1000.times do |i|
      User.create(name: user_names[i])
    end
  end

  # REVIEW: 这个需求是一个 script OR task
  desc "create 10,000 comments for the post"
  task create_comments: :environment do

  end

end
