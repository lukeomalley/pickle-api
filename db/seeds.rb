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

# Users
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

katy = User.create(
  name: 'Katy',
  username: 'katyomalley',
  email: 'katyomalley7gmail.com',
  bio: 'dogs, family, travel',
  img_url: 'https://scontent-iad3-1.xx.fbcdn.net/v/t1.0-1/c0.37.200.200a/1656153_10152045745033303_2095667964_n.jpg?_nc_cat=108&_nc_oc=AQkkbVBycZMk08jFJdqjGk29iJpN9xWmXgABpymK2bO4bI0cS-MUO7IIo4YEOj5TmuI&_nc_ht=scontent-iad3-1.xx&oh=1f5376859545f139341bf2bee769c6f0&oe=5E3AE2E8'
)

# Categories
development = Category.create(name: 'development')
lifestyle = Category.create(name: 'lifestyle')

# Pickles
framework_pickle = Pickle.create(
  user: luke,
  category: development,
  description: 'Which JS framework should I use for my next project?'
)
vue = Option.create(pickle: framework_pickle, text: 'Vue')
react = Option.create(pickle: framework_pickle, text: 'React')
svelte = Option.create(pickle: framework_pickle, text: 'Svelte')
angular = Option.create(pickle: framework_pickle, text: 'Angular')

wedding_pickle = Pickle.create(
  user: meagan,
  category: lifestyle,
  description: "Should I go to my friends wedding?"
)
yes = Option.create(pickle: wedding_pickle, text: 'Yes')
no = Option.create(pickle: wedding_pickle, text: 'No')

# Selections
Selection.create(user: meagan, option: svelte)
Selection.create(user: luke, option: yes)

# Comments
Comment.create(user: meagan, pickle: framework_pickle, text: 'Im loving svelte these days')
Comment.create(user: katy, pickle: framework_pickle, text: 'You gotta try out VUE its amazing! 🎉')
