10.times do |n|
  title  = Faker::Name.name
  description = Faker::Lorem.sentence(5)
  image = "Image"
  number_user = 10
  start_date = "12/12/1900"
  end_date = "1/1/2011"
  price = 10000
  rating = 0
  category_id = 3
  Tour.create!(title:  title,
               description: description,
               image: image,
               number_user: number_user,
               start_date: start_date,
               end_date: end_date,
               price: price,
               rating: rating,
               category_id: category_id
               )
end
