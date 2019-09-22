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
  img_url: 'https://scontent-iad3-1.xx.fbcdn.net/v/t1.0-9/11863322_10207962970698525_6376937075346576264_n.jpg?_nc_cat=101&_nc_oc=AQkMMzfkevE67d504a4nx8Eaphy4A7BpMGbqdBSFCBqNskgwoQXHxNlkqEf-_apHWj0&_nc_ht=scontent-iad3-1.xx&oh=114dc25f1b22ec06649ec5dcbf899f1e&oe=5E01BEF0',
  password: 'test',
  password_confirmation: 'test'
)

meagan = User.create(
  name: 'Meagan',
  username: 'meagangriffith',
  email: 'meaggrif@umd.edu',
  bio: 'nerd, loser, dweeb',
  img_url: 'https://scontent-iad3-1.xx.fbcdn.net/v/t1.0-9/62538797_2383612895068257_471808702995759104_o.jpg?_nc_cat=103&_nc_oc=AQm4BQZzpOGFe2ee0eEXlZsD47_4bstt_LWgkXfFPRDkGPm9Nbp9qOMtLHtWVMvtXRA&_nc_ht=scontent-iad3-1.xx&oh=abc119a81d80d26b1a8feee9da756ee9&oe=5E3C4F7A',
  password: 'test',
  password_confirmation: 'test'
)

katy = User.create(
  name: 'Katy',
  username: 'katyomalley',
  email: 'katyomalley7gmail.com',
  bio: 'dogs, family, travel',
  img_url: 'https://scontent-iad3-1.xx.fbcdn.net/v/t1.0-1/c0.37.200.200a/1656153_10152045745033303_2095667964_n.jpg?_nc_cat=108&_nc_oc=AQkkbVBycZMk08jFJdqjGk29iJpN9xWmXgABpymK2bO4bI0cS-MUO7IIo4YEOj5TmuI&_nc_ht=scontent-iad3-1.xx&oh=1f5376859545f139341bf2bee769c6f0&oe=5E3AE2E8',
  password: 'test',
  password_confirmation: 'test'
)

kolton = User.create(
  name: 'Kolton',
  username: 'koltonstarr',
  email: 'kstarr@flatironschool.com',
  bio: 'web developer',
  img_url: 'https://scontent-iad3-1.xx.fbcdn.net/v/t1.0-9/70339774_2465052926908389_1106120199465074688_n.jpg?_nc_cat=107&_nc_oc=AQn5eAFcIPx_yITEYp83IMihiRDJR35SAia4kztKeHegoalBYa3okx4LR8QuVdussg4&_nc_ht=scontent-iad3-1.xx&oh=55f981962a3826fd14ed18ed649be298&oe=5E034B9A',
  password: 'test',
  password_confirmation: 'test'
)


# Categories
development = Category.create(name: 'Development')
lifestyle = Category.create(name: 'Lifestyle')
food = Category.create(name: 'Food')
games = Category.create(name: 'Games')
politics = Category.create(name: 'Politics')
sports = Category.create(name: 'Sports')

# Framework Pickle
framework_pickle = Pickle.create(
  user: luke,
  category: development,
  description: 'Which JS framework should I use for my next project?'
)
vue = Option.create(pickle: framework_pickle, text: 'Vue')
react = Option.create(pickle: framework_pickle, text: 'React')
svelte = Option.create(pickle: framework_pickle, text: 'Svelte')
angular = Option.create(pickle: framework_pickle, text: 'Angular')
Comment.create(user: meagan, pickle: framework_pickle, text: 'Im loving svelte these days')
Comment.create(user: katy, pickle: framework_pickle, text: 'You gotta try out VUE its amazing! 🎉')
Selection.create(user: meagan, option: svelte)

# Wedding Pickle
wedding_pickle = Pickle.create(
  user: meagan,
  category: lifestyle,
  description: 'Should I go to my best friends wedding?'
)
yes = Option.create(pickle: wedding_pickle, text: 'Yes')
no = Option.create(pickle: wedding_pickle, text: 'No')
Comment.create(user: luke, pickle: wedding_pickle, text: "I probably wouldn't tbh, but thats just me")
Selection.create(user: luke, option: yes)

dinner_pickle = Pickle.create(
  user: katy,
  category: food,
  description: 'What should I have for dinner tonight?'
)
soup = Option.create(pickle: dinner_pickle, text: 'Kale Soup')
steak = Option.create(pickle: dinner_pickle, text: 'Steak and Potatoes')
sushi = Option.create(pickle: dinner_pickle, text: 'Sushi')
pizza = Option.create(pickle: dinner_pickle, text: 'Pizza with Pep')
Comment.create(user: meagan, pickle: dinner_pickle, text: 'Pizza! Pizza! Pizza! 🍕')

game_pickle = Pickle.create(
  user: luke,
  category: games,
  description: 'What board game should me and my friends play tonight?'
)
sorry = Option.create(pickle: game_pickle, text: 'Sorry')
clue = Option.create(pickle: game_pickle, text: 'Clue')
monopoly = Option.create(pickle: game_pickle, text: 'Monopoly')
Comment.create(user: katy, pickle: game_pickle, text: 'What kind of freak would want to play sorry? 😂')

sports_pickle = Pickle.create(
  user: kolton,
  category: sports,
  description: 'Who do you think will win the superbowl this year?'
)
redskins = Option.create(pickle: sports_pickle, text: 'Washington Redskins')
cowboys = Option.create(pickle: sports_pickle, text: 'Dallas Cowboys')
patriots = Option.create(pickle: sports_pickle, text: 'New England Patriots')
Comment.create(user: luke, pickle: sports_pickle, text: 'Skins are going all the way this year baby! 🏈')