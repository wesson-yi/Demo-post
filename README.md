# README
* ruby version 3.6.0

# How to run
1. Initialize the environmen and database
  ```
  bundle install; rake db:create; rake db:migrate; rake db:seed
  ```
2. Run tasks to create users and comments
  ```
  rake db:create_users
  rake db:create_comments
  ```
3. Run server
  ```
  rails s
  ```
4. View on browser  
Open the browser and enter `localhost:3000` in the address bar

# Others
1. 要求 1 中第二条提到：`Write a script create 10,000 comments for this post`，但是翻译中说使用 task 与英文要求 script 有出入，想来这不是很重要，暂时选择使用 task 实现
2. 要求 2 中第三条提到：`如果你能把翻页过程中论数据变化带来的数据重复或遗漏问题解决，可以获得额外的分数`，设想中完全可以使用 WebSocket 实现，在 Rails 中的实现是 ActionCable，这是我近期正在使用的技术，但鉴于这是一个 Demo，加之时间并不充裕，暂时不作实现
3. 其他参见代码中的标注 `REVIEW`

---
# That's all, Thx
