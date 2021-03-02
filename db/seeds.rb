# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Game.destroy_all
Player.destroy_all



Player.create(name: 'KingTusk', city: 'Nashville', state: 'Tennesse')
Game.create(player_id: 1, title: 'Call of Duty: Warzone', genre: 'BR', skill_level: '4', game_name: 'KingTusk')
Game.create(player_id: 1, title: 'Valorant', genre: 'FPS', skill_level: '3', game_name: 'TuskKing')

Player.create(name: 'alecT', city: 'Houston', state: 'Texas')
Game.create(player_id: 2, title: 'Valorant', genre: 'FPS', skill_level: '3', game_name: 'TrumbleInDaJungle')
Game.create(player_id: 2, title: 'Fall Guys', genre: 'Casual', skill_level: '2', game_name: 'TrumbleTime')


Player.create(name: 'drewP', city: 'Gaithersburg', state: 'Maryland')
Game.create(player_id: 3, title: 'Dota2', genre: 'MOBA', skill_level: '3', game_name: 'Flanders')