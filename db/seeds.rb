# frozen_string_literal: true

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

rob = User.create(
  name: 'Rob',
  username: 'trob',
  email: 'trob@flatironschool.com',
  bio: 'web developer',
  img_url: 'https://media.licdn.com/dms/image/C4E03AQGffnaPfO2AWg/profile-displayphoto-shrink_800_800/0?e=1574899200&v=beta&t=4tCx055Qk9y--MbwxgwzfjkQ9c9qqxMQiQ7kli4e6Is',
  password: 'test',
  password_confirmation: 'test'
)

sam = User.create(
  name: 'Sam',
  username: 'samkane',
  email: 'samkane@flatironschool.com',
  bio: 'web developer',
  img_url: 'https://media.licdn.com/dms/image/C4D03AQFDwz89h3LTeg/profile-displayphoto-shrink_800_800/0?e=1574899200&v=beta&t=3zTIhxgvrzSq0-YF_cKP0KPPO46BcSaheeWcQZTok9g',
  password: 'test',
  password_confirmation: 'test'
)

leslie = User.create(
  name: 'Leslie',
  username: 'lesliesage',
  email: 'lesliesage@flatironschool.com',
  bio: 'web developer',
  img_url: 'https://media.licdn.com/dms/image/C4D03AQEFf108soefGw/profile-displayphoto-shrink_800_800/0?e=1574899200&v=beta&t=wKXm-REwMM8lg5z1UXsBOEu5uTt4_e9RjqIrXyZ5KF0',
  password: 'test',
  password_confirmation: 'test'
)

ursula = User.create(
  name: 'Ursula',
  username: 'ursulamiller',
  email: 'ursulamiller@flatironschool.com',
  bio: 'web developer',
  img_url: 'https://media.licdn.com/dms/image/C4E03AQF_Rt_q-Z2PNw/profile-displayphoto-shrink_800_800/0?e=1574899200&v=beta&t=3FFWS6Cv2wiu78jRO3UTG1O61dhQ_YvI8ERvGhvbHqI',
  password: 'test',
  password_confirmation: 'test'
)

harum = User.create(
  name: 'Harum',
  username: 'harumhelmy',
  email: 'harumhelmy@flatironschool.com',
  bio: 'web developer',
  img_url: 'https://media.licdn.com/dms/image/C4E03AQFwdOxozNSbCw/profile-displayphoto-shrink_800_800/0?e=1574899200&v=beta&t=0TmWTH1fWJnZciYpcXC4EL1003tcSC1ly5uSyBjCXNk',
  password: 'test',
  password_confirmation: 'test'
)

ashley = User.create(
  name: 'Ashley',
  username: 'ashleytolen',
  email: 'ashleytolen@flatironschool.com',
  bio: 'web developer',
  img_url: 'https://scontent-iad3-1.xx.fbcdn.net/v/t31.0-1/10431331_1497335683813584_5439392674056005421_o.jpg?_nc_cat=100&_nc_oc=AQkyUF7lO-7tuj7pz0dspWdej04CZ2Bvy9d5OC8cN9Pyq_FBWY6yM6ZBY8hVWXZJRZ8&_nc_ht=scontent-iad3-1.xx&oh=e9ee3a7d65460e0daf84d60fc885c75e&oe=5E2D2021',
  password: 'test',
  password_confirmation: 'test'
)

jesse = User.create(
  name: 'Jesse',
  username: 'jesseberman',
  email: 'jesseberman@flatironschool.com',
  bio: 'web developer',
  img_url: 'https://media.licdn.com/dms/image/C4E03AQF__A7hclcNKg/profile-displayphoto-shrink_800_800/0?e=1574899200&v=beta&t=vM6fMqCcRi0ZVUbeugJI5VwrB2avU8drVcQJ12eZ10s',
  password: 'test',
  password_confirmation: 'test'
)

nick = User.create(
  name: 'Nick',
  username: 'nickruggieri',
  email: 'nickruggieri@flatironschool.com',
  bio: 'web developer',
  img_url: 'https://media.licdn.com/dms/image/C4E03AQGK-zl8Fp28gA/profile-displayphoto-shrink_800_800/0?e=1574899200&v=beta&t=87uCok9YepxRGlul4cGhYMUkTE228l5ip9pQO59iXQ4',
  password: 'test',
  password_confirmation: 'test'
)

michelle = User.create(
  name: 'Michelle',
  username: 'michellelam',
  email: 'michellelam@flatironschool.com',
  bio: 'web developer',
  img_url: 'https://media.licdn.com/dms/image/C4D03AQEdLD4kcDs2BQ/profile-displayphoto-shrink_800_800/0?e=1574899200&v=beta&t=NoESxNyYaLd4LC_S1mhO0Q3fgFILeoyUmjjQ9rlj8U8',
  password: 'test',
  password_confirmation: 'test'
)

claudia = User.create(
  name: 'Claudia',
  username: 'claudiasolbes',
  email: 'claudiasolbes@flatironschool.com',
  bio: 'web developer',
  img_url: 'https://media.licdn.com/dms/image/C4D03AQEdLD4kcDs2BQ/profile-displayphoto-shrink_800_800/0?e=1574899200&v=beta&t=NoESxNyYaLd4LC_S1mhO0Q3fgFILeoyUmjjQ9rlj8U8',
  password: 'test',
  password_confirmation: 'test'
)

lisa = User.create(
  name: 'Lisa',
  username: 'lisaantwi',
  email: 'lisaantwi@flatironschool.com',
  bio: 'web developer',
  img_url: 'https://media.licdn.com/dms/image/C4E03AQGPrjeP5bwc-Q/profile-displayphoto-shrink_800_800/0?e=1574899200&v=beta&t=MRAP2yfH5twS171xn6Yh0QCbwA5XY38IUs-qTRO1KfM',
  password: 'test',
  password_confirmation: 'test'
)

chine = User.create(
  name: 'Chine',
  username: 'chineanikwe',
  email: 'chineanikwe@flatironschool.com',
  bio: 'web developer',
  img_url: 'https://media.licdn.com/dms/image/C4D03AQHt_ibEoGEhJg/profile-displayphoto-shrink_200_200/0?e=1574899200&v=beta&t=tZUKTJi2Sksd7ikk9z7HC3kOQXo-SDxgo-QxJ66fveQ',
  password: 'test',
  password_confirmation: 'test'
)

trev = User.create(
  name: 'Trev',
  username: 'trevdog',
  email: 'trevdog@flatironschool.com',
  bio: 'web developer',
  img_url: 'https://media.licdn.com/dms/image/C4E03AQHvJQFylDD8Wg/profile-displayphoto-shrink_200_200/0?e=1574899200&v=beta&t=46PQSHZTpAyeXSzupGhQuibFnCocwajbi4VX4kTfUzg',
  password: 'test',
  password_confirmation: 'test'
)

seamus = User.create(
  name: 'Seamus Quinn',
  username: 'seamusquinn',
  email: 'seamusquinn29@gmail.com',
  bio: 'puppy is cute',
  img_url: 'https://scontent-iad3-1.cdninstagram.com/vp/769571148503b4fe220f2916ea67c2fc/5E1B0E0C/t51.2885-15/sh0.08/e35/p640x640/69542878_141921893702007_1856759306024768386_n.jpg?_nc_ht=scontent-iad3-1.cdninstagram.com&_nc_cat=103',
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
pets = Category.create(name: 'Pets')
tech = Category.create(name: 'Technology')
music = Category.create(name: 'Music')


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

rob_pickle = Pickle.create(
  user: rob,
  category: food,
  description: 'What should I have for lunch today'
)
jacks = Option.create(pickle: rob_pickle, text: 'Jacks Fresh')
fiveguys = Option.create(pickle: rob_pickle, text: 'Fiveguys')
sweetgreen = Option.create(pickle: rob_pickle, text: 'Sweetgreen')
potbelly = Option.create(pickle: rob_pickle, text: 'Potbellys')
Comment.create(user: luke, pickle: rob_pickle, text: 'Rob! Eat some veggies today please! 🥬')
Comment.create(user: lisa, pickle: rob_pickle, text: 'You better get sweetgreen today rob')
Selection.create(user: harum, option: sweetgreen)
Selection.create(user: nick, option: fiveguys)
Selection.create(user: trev, option: potbelly)
Selection.create(user: luke, option: jacks)

