tags = []
10.times { tags << Tag.create(:name => Faker::Lorem.word) }

3.times do
  p = Post.create(:title => Faker::Lorem.word,
               :body => Faker::Lorem.paragraphs(3))

  number_of_tags = rand(tags.length)

  number_of_tags.times do
    random_tag = tags.sample
    p.tags << random_tag unless p.tags.include? random_tag
  end
end
