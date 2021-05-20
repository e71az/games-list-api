# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Game.destroy_all

Game.create!([{
  name: "League of Legends",
  description: "League of Legends is a team-based game with over 140 champions to make epic plays with.",
  image: "https://s3.gaming-cdn.com/images/products/5939/271x377/ruined-kings-a-league-of-legends-story-cover.jpg",
  price: 0,
},
              {
  name: "GTA V",
  description: "Grand Theft Auto V is a 2013 action-adventure game developed by Rockstar North and published by Rockstar Games. It is the first main entry in the Grand Theft Auto series since 2008's Grand Theft Auto IV.",
  image: "https://s1.gaming-cdn.com/images/products/186/271x377/grand-theft-auto-v-cover.jpg",
  price: 37,
},

              {
  name: "Valheim",
  description: "A battle-slain warrior, the Valkyries have ferried your soul to Valheim, the tenth Norse world. Besieged by creatures of chaos and ancient enemies of the gods, you are the newest custodian of the primordial purgatory, tasked with slaying Odin’s ancient rivals and bringing order to Valheim.",
  image: "https://s1.gaming-cdn.com/images/products/7119/271x377/valheim-cover.jpg",
  price: 21,
},

              {
  name: "Loop Hero",
  description: "The Lich has thrown the world into a timeless loop and plunged its inhabitants into never ending chaos. Wield an expanding deck of mystical cards to place enemies, buildings, and terrain along each unique expedition loop for the brave hero.",
  image: "https://s3.gaming-cdn.com/images/products/8402/271x377/loop-hero-cover.jpg",
  price: 19,
},

              {
  name: "Hitman 3",
  description: "Hitman 3 for PC is the eighth in the Hitman series and the final episode in the nicely rounded World of Assassination trilogy, which consists of Hitman, Hitman 2 and now Hitman 3. The trilogy follows a narrative arc which is concluded in this game by playing the single player mode. In this game, the genetically engineered hitman, Agent 47, is tasked with finding and eliminating the leaders of the secretive cabal, Providence, that is controlling world-wide affairs.",
  image: "https://s3.gaming-cdn.com/images/products/6851/271x377/hitman-3-cover.jpg",
  price: 75,
},

              {
  name: "Monster Hunter World",
  description: "Welcome to a new world! Take on the role of a hunter and slay ferocious monsters in a living, breathing ecosystem where you can use the landscape and its diverse inhabitants to get the upper hand.",
  image: "https://s3.gaming-cdn.com/images/products/5858/271x377/monster-hunter-world-cover.jpg",
  price: 37,
},

              {
  name: "Path Of Exile 2",
  description: "Path of Exile 2 is a new seven-act storyline that is available alongside the original Path of Exile 1 campaign. Both the old and new storyline lead to the same shared Atlas endgame. Path of Exile 2 retains all expansion content that has been created over the last six years and introduces a new skill system, ascendancy classes, engine improvements and more.",
  image: "https://s3.gaming-cdn.com/images/products/5813/271x377/path-of-exile-2-cover.jpg",
  price: 0,
},

              {
  name: "Resident Evil Village",
  description: "Experience survival horror like never before in the eighth major installment in the storied Resident Evil franchise - Resident Evil Village.",
  image: "https://s3.gaming-cdn.com/images/products/8096/271x377/resident-evil-village-deluxe-edition-cover.jpg",
  price: 89,
},

              {
  name: "Tom Clancy's Rainbow Six Siege",
  description: "Squad up and breach in to explosive 5v5 PVP action. Tom Clancy's Rainbow Six® Siege features a huge roster of specialized operators, each with game-changing gadgets to help you lead your team to victory.",
  image: "https://s2.gaming-cdn.com/images/products/2458/271x377/tom-clancys-rainbow-six-siege-gold-edition-cover.jpg",
  price: 75,
},

              {
  name: "Phasmophobia",
  description: "Phasmophobia is a 4 player online co-op psychological horror where you and your team members of paranormal investigators will enter haunted locations filled with paranormal activity and gather as much evidence of the paranormal as you can.",
  image: "https://s1.gaming-cdn.com/images/products/7677/271x377/phasmophobia-early-access-cover.jpg",
  price: 15,
}])

p "Created #{Game.count} games"
