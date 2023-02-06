puts "Cleaning DB"
puts "Deleting bookmark..."
Bookmark.destroy_all
puts "Deleting games..."
Game.destroy_all
puts "Deleting collections..."
Collection.destroy_all
puts "Deleting users..."
User.destroy_all
puts "DB cleaned"

puts "Create User"
User.create!(nickname: "Satomishi", email: "sato@me.com", password: "secret")

puts "Create game"
game = Game.create!(
  title: "7 wonder",
  description: "Jeux de gestion de civilisation. Ce joue avec des cartes",
  player_min: 2,
  player_max: 7,
  avg_time: 120,
  editor: "Asmodée"
)
puts "Create collection"
collection = Collection.create!(name: "Strat", description: "Jeux orienté stratégie", user_id: User.first.id)

puts "Create bookmark"
bookmark = Bookmark.new
bookmark.collection = collection
bookmark.game = game
bookmark.save!

puts "DB set up"
