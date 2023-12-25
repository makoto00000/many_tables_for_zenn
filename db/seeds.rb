20.times do
  Article.create!(
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph(sentence_count: 10)
  )
end
