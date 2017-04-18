# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
cat1 = Cat.create(name: "George", color:"black", sex: "M", birth_date: "2015/01/20", description: "George is a good cat.")
cat2 = Cat.create(name: "Tom", color:"white", sex: "M", birth_date: "2016/01/20", description: "Tom is a lazy cat.")
cat3 = Cat.create(name: "Linda", color:"yellow", sex: "F", birth_date: "2013/01/20", description: "Linda is a old cat.")
