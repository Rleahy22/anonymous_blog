require 'faker'

tag_array = ['#BallSoHard', '#FishFilet', '#WhatSheOrder?', '#TrynaFindMe', '#CallMeMaybe', '#BeiberFever', '#ItsBrittneyBitch', '#HollaAtAThug', '#DealWithIt', '#ThatShitCray']

@posts = 10.times.map do
  Post.create(title: Faker::Name.name, content: Faker::Lorem.paragraphs)
end

@tags = 10.times.map do
  Tag.create(title: tag_array.sample)
end

@posts.each do |post|
  post.tags += @tags.sample(2)
end
