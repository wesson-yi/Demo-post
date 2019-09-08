require 'yaml'
require 'json'

namespace :db do
  desc "create 1,000 random users"
  task create_users: :environment do
    # REVIEW: Names need random and uniq?
    user_names = YAML.load_file(File.join(Rails.root, 'config/users.yml')).sample(1_000)
    1000.times do |i|
      User.create!(name: user_names[i])
    end
  end

  # REVIEW: What do you need here? script OR task?
  desc "create 10,000 comments for the post"
  task create_comments: :environment do
    comment_contents = JSON.parse(File.read File.join(Rails.root, 'config/comments.json'))
    # REVIEW: YAML can read json else
    # user_names = YAML.load_file File.join(Rails.root, 'config/comments.json')

    user_ids = User.ids
    post = Post.first

    10_000.times do
      post.comments.create!(user_id: user_ids.sample, content: comment_contents.sample)
    end
  end
end
