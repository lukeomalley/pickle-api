# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Category.destroy_all
Pickle.destroy_all
Comment.destroy_all
Selection.destroy_all
Option.destroy_all

luke = User.create(
  name: 'Luke',
  username: 'lukeomalley',
  email: 'lukeomalley7@gmail.com',
  bio: 'developer, engineer and teacher',
  img_url: 'https://scontent-iad3-1.xx.fbcdn.net/v/t1.0-9/11863322_10207962970698525_6376937075346576264_n.jpg?_nc_cat=101&_nc_oc=AQkMMzfkevE67d504a4nx8Eaphy4A7BpMGbqdBSFCBqNskgwoQXHxNlkqEf-_apHWj0&_nc_ht=scontent-iad3-1.xx&oh=114dc25f1b22ec06649ec5dcbf899f1e&oe=5E01BEF0'
)

meagan = User.create(
  name: 'Meagan',
  username: 'meagangriffith',
  email: 'meaggrif@umd.edu',
  bio: 'nerd, loser, dweeb',
  img_url: 'https://scontent-iad3-1.xx.fbcdn.net/v/t1.0-9/62538797_2383612895068257_471808702995759104_o.jpg?_nc_cat=103&_nc_oc=AQm4BQZzpOGFe2ee0eEXlZsD47_4bstt_LWgkXfFPRDkGPm9Nbp9qOMtLHtWVMvtXRA&_nc_ht=scontent-iad3-1.xx&oh=abc119a81d80d26b1a8feee9da756ee9&oe=5E3C4F7A'
)

development = Category.create(name: 'development')

framework_pickle = Pickle.create(
  user: luke,
  category: development,
  description: 'what javascript client framework should I use for my next projext?'
)
vue = Option.create(pickle: framework_pickle, text: 'Vue')
react = Option.create(pickle: framework_pickle, text: 'React')
svelte = Option.create(pickle: framework_pickle, text: 'Svelte')

Selection.create(user: meagan, option: svelte)
Comment.create(user: meagan, pickle: framework_pickle, text: 'Im loving svelte these days')
