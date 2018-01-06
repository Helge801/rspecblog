def em string
  puts "*" * 50
  puts "   " + string
  puts "*" * 50
end

def get_long_content
  Faker::HitchhikersGuideToTheGalaxy.quote +
  Faker::HeyArnold.quote +
  Faker::HowIMetYourMother.quote +
  Faker::Movie.quote +
  Faker::Seinfeld.quote +
  Faker::Dune.quote +
  Faker::HitchhikersGuideToTheGalaxy.quote +
  Faker::HeyArnold.quote +
  Faker::HowIMetYourMother.quote +
  Faker::Movie.quote +
  Faker::Seinfeld.quote +
  Faker::Dune.quote +
  Faker::HitchhikersGuideToTheGalaxy.quote +
  Faker::HeyArnold.quote +
  Faker::HowIMetYourMother.quote +
  Faker::Movie.quote +
  Faker::Seinfeld.quote +
  Faker::Dune.quote
end

em "creating Blogs"
20.times do |i|
  Blog.create!(title: Faker::Book.title,
               body: get_long_content,
               image:Faker::LoremPixel.image("600x300")
              )
end