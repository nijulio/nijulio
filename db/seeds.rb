# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
Category.delete_all
Series.delete_all
Episode.delete_all

Category.create(name: "Accion")
Category.create(name: "Drama")

user = User.new(name: 'Nicolas Julio',username: 'nijulio', age:'21',email:'nijulio@uc.cl',password:'123456' ,admin:true, visitor:false, password_confirmation:'123456')
user.skip_confirmation!
user.save!

user = User.create(name: 'Francisco Rencoret',username: 'frencoret', age:'21',email:'frencoret@uc.cl', password:'123456', admin:true, visitor:false, password_confirmation:'123456')
user.skip_confirmation!
user.save!

user = User.create(name: 'Raimundo Manterola',username: 'rmanterola', age:'21',email:'rmanterola@uc.cl', password:'123456', admin:false, visitor:true, password_confirmation:'123456')
user.skip_confirmation!
user.save!

Series.create(name:'Prison Break', description:'Michael scofield se escapa de la carcel', category:Category.first.id, season:'1', user:User.first.id)
Series.create(name:'Breaking Bad', description:'Crystalmeth con Mr white!', category:Category.first.id, season:'1', user:User.first.id)
Series.create(name:'Game of thrones', description:'El universo de game of thrones', category:Category.first.id, season:'1', user:User.first.id)

Episode.create(name:'Ogyana', description:'Michael se intenta de escapar de la carcel Yemen', series:Series.first.id.to_s, season:1, episode_number:1, user:17)
Episode.create(name:'Escaping', description:'Michael se escapa de la carcel', series:Series.first.id.to_s, season:1, episode_number:2, user:17)

Episode.create(name:'Mr White', description:'Mr white y su vida loca', series:Series.second.id.to_s, season:1, episode_number:1, user:17)
Episode.create(name:'Jesse Pinkman', description:'El loco jesse', series:Series.second.id.to_s, season:1, episode_number:2, user:17)