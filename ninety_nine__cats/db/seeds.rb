# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Cat.destroy_all

dan = Cat.create(name: 'Dan', birth_date:'1992/3/20', sex: 'M', color: 'black', description: 'guy')
ray = Cat.create(name: 'Ray', birth_date:'1992/3/21', sex: 'M', color: 'white', description: 'man')
mikasa = Cat.create(name: 'Mikasa', birth_date:'1992/3/22', sex: 'F', color: 'orange', description: 'monster')

