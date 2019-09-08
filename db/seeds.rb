# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


10.times do |blog|
    Blog.create!(
        title: "my blog post #{blog} ",
        body: "Sed ut perspiciatis unde omnis iste natus pariatur?"
    )
end

puts("10 blog post created.")

5.times do |skill|
    Skill.create!(
        title: "my skill #{skill}",
        percent_utilized: skill * 15
    )
end

puts("5 skills been created.")

9.times do |portfolio_item|
    Portfolio.create!(
        title: "portfolio title #{portfolio_item}",
        subtitle: "My greate service" ,
        body: "Sed ut perspiciatis ",
        main_image:"https://via.placeholder.com/600x400" ,
        thumb_image: "https://via.placeholder.com/350x200"
    )
end 

puts("9 portfolios has been created.")