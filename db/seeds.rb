# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

puts "Start seeding"

start_time = Time.new

puts "Destroying old data"


Review.destroy_all
Meeting.destroy_all
Place.destroy_all
Like.destroy_all
Match.destroy_all
Dog.destroy_all
User.destroy_all

puts "Old data destroyed"

puts "Creating users"

user_1 = User.create!(first_name: 'Charles', last_name: 'Sanse', email: 'charles.sanse@mail.com', username: 'CharlesSanse', password: 'azerty', description: 'J’ai grandi avec des animaux, j’adore les chiens.')
user_2 = User.create!(first_name: 'Anthony', last_name: 'Plisson', email: 'anthony.plisson@laposte.net', username: 'AntoP', password: 'azerty', description: 'J’ai Sirius depuis 3 ans, maintenant, il est la star du parc')
user_3 = User.create!(first_name: 'Nadia', last_name: 'Fluck', email: 'nadia-fluck@yahoo.fr', username: 'NadiaFluuuck', password: 'azerty', description: 'Je viens d’emménager dans le quartier avec Izy, je lui cherche des amis')
user_4 = User.create!(first_name: 'Julia', last_name: 'Martinez', email: 'julia.martinez@gmail.com', username: 'JujuTravel', password: 'azerty', description: 'Il a un gros ventre comme son maître... du coup j’essaie de le faire bouger')
user_5 = User.create!(first_name: 'Déborah', last_name: 'Brignon', email: 'debobo@gmail.com', username: 'Debobo', password: 'azerty', description: 'Je ne connais pas du tout le quartier !')
user_6 = User.create!(first_name: 'Mélinda ', last_name: 'Kieboom', email: 'melinda-kieboom@hotmail.fr', username: 'Méli01', password: 'azerty', description: 'J’ai 1 chien et 6 chats, je veux lui faire plein d’amis.')
user_7 = User.create!(first_name: 'Manon', last_name: 'Ingrassi', email: 'manon.ingrassi@gmail.com', username: 'ManoMano', password: 'azerty', description: 'Je connais plein de coins sympas, mais Tofu s’ennuie tout seul.')
user_8 = User.create!(first_name: 'Didier', last_name: 'Plantard', email: 'didierplantard@yahoo.fr', username: 'LaMachine', password: 'azerty', description: 'J’adore la bidoche, et Lucky aussi !')
user_9 = User.create!(first_name: 'Thibault', last_name: 'Romarin', email: 'hdp@icloud.com', username: 'HDP', password: 'azerty', description: 'Advienne que pourra.')
user_10 = User.create!(first_name: 'Marie-Julie', last_name: 'Cotta', email: 'marie-julie.cotta@hotmail.fr', username: 'Pipou', password: 'azerty', description: 'J’ai peur des gros chiens, et Stormy les attaque à vue.')
user_11 = User.create!(first_name: 'Michael ', last_name: 'Scott', email: 'michael-scott@wanadoo.fr', username: 'TheManager', password: 'azerty', description: 'Je suis très occupé par mon travail, mais je trouve toujours du temps pour Souna !')
user_12 = User.create!(first_name: 'Dwight', last_name: 'Schrute', email: 'dwight.schrute@gmail.com', username: 'AssistantRegionalManager', password: 'azerty', description: 'J’apprends à mon Labrador tout ce qu’il doit savoir pour survivre dans la nature.')
user_13 = User.create!(first_name: 'Kevin', last_name: 'Malone', email: 'kmalone@scranton.com', username: 'ChiliGuy', password: 'azerty', description: 'Tsouky ne veux plus jouer à la balle. Je lui cherche un ami pour sortir.')
user_14 = User.create!(first_name: 'Angela', last_name: 'Martin ', email: 'angela.martin@yahoo.fr', username: 'Kitty', password: 'azerty', description: 'Papi n’est pas un Bulldog comme les autres, on adore se faire belles ensemble.')
user_15 = User.create!(first_name: 'Jannette', last_name: 'Levingston', email: 'jan.levingston@gmail.com', username: 'Janny', password: 'azerty', description: 'Maurice et moi sommes très difficiles sur les choix de nos partenaires.')
user_16 = User.create!(first_name: 'Jean', last_name: 'Neymar', email: 'neyney@psg.fr', username: 'JenNey', password: 'azerty', description: 'Rex m’aide lors de mes sorties jogging, il me permet de me surpasser !')
user_17 = User.create!(first_name: 'Christophe', last_name: 'Devachane', email: 'devach@tf1.fr', username: 'Dechav', password: 'azerty', description: 'J’ai besoin d’aide pour calmer mon chien, il a bien plus d’énergie que moi...')
user_18 = User.create!(first_name: 'Lara', last_name: 'Croft', email: 'crofty@gmx.com', username: 'Crofty', password: 'azerty', description: 'Je suis nouvelle dans ces terres, j’ai vraiment hâte de découvrir les environs avec mon compagnon.')
user_19 = User.create!(first_name: 'Hermione', last_name: 'Grange', email: 'wingardium@leviosa.aaa', username: 'RonMorron', password: 'azerty', description: 'Mon chien m’aide à me défendre contre les détraqueurs et les mangemorts.')
user_20 = User.create!(first_name: 'Jeanne', last_name: 'Marc', email: 'brulee@vive.fr', username: 'Fire', password: 'azerty', description: 'Toujours chaude pour une balade !')

puts "Creating dogs"

dog_1 = Dog.create!(user: user_1 ,name: 'Medor', age: '3', species: 'Labrador', temper: 'Hyperactif', address: '5 Rue Fortuny, 75017 Paris', description: 'Beaucoup (trop) d’énergie à dépenser mais toujours bienveillant avec les enfants.', toys: ['Balle', 'Bâtons'])
dog_2 = Dog.create!(user: user_2 ,name: 'Majax', age: '5', species: 'Golden Retriever', temper: 'Joueur', address: '52 Rue Saint-Lazare, 75009 Paris', description: 'Très gentil et affectueux, prudent avec les plus petits chiens. Récemment débarqué dans le quartier, à la recherche de nouveaux copains à me faire dans les alentours !', toys: ['Chaussures', 'Boomrang'])
dog_3 = Dog.create!(user: user_3 ,name: 'Sirius', age: '9', species: 'Caniche', temper: 'Amical', address: '48 Bd de Vaugirard, 75015 Paris', description: 'Tout mimi, pas très à l’aise avec les gros chiens, très dynamique !', toys: ['Balles', 'Feuilles'])
dog_4 = Dog.create!(user: user_4 ,name: 'Izy', age: '7', species: 'Bulldog', temper: 'Paresseux', address: '9 Rue Jules Romains, 75019 Paris', description: 'Gros lard, pas très virulent mais très câlin !', toys: ['Chaussures', 'Papillons'])
dog_5 = Dog.create!(user: user_5 ,name: 'Groupi', age: '1', species: 'Caniche', temper: 'Hyperactif', address: '2 Rue Saint-Lazare, 75009 Paris', description: 'Heureusement qu’il a des petites jambes, sinon je ne pourrai pas le suivre !', toys: ['Bâtons', 'Pigeon'])
dog_6 = Dog.create!(user: user_6 ,name: 'Pipou', age: '1', species: 'Pitbull', temper: 'Indépendant', address: '57 Rue du Simplon, 75018 Paris', description: 'Très curieux, mieux vaut me garder en laisse haha', toys: ['Bâtons', 'Short'])
dog_7 = Dog.create!(user: user_7 ,name: 'Tofu', age: '2', species: 'Shiba Inu', temper: 'Amical', address: '30 Rue las Cases, 75007 Paris', description: 'Un mec super sympa, plein de vie, et qui adore manger ce qui traîne par terre', toys: ['Balle', 'Chats'])
dog_8 = Dog.create!(user: user_8 ,name: 'Lucky', age: '1', species: 'Berger Allemand', temper: 'Joueur', address: '12 Rue de Malte, 75011 Paris', description: 'Gros gourmand et grand sportif ! J’adore faire courir mes maîtres !', toys: ['Bâtons', 'Boomrang'])
dog_9 = Dog.create!(user: user_9 ,name: 'Aria', age: '9', species: 'Yorkshire', temper: 'Amical', address: '3 Rue Frédéric Loliée, 75020 Paris', description: 'Petite princesse, je n’ai aucun mal à approcher mes semblables', toys: ['Bâtons', 'Avion en papier'])
dog_10 = Dog.create!(user: user_10, name: 'Stormy', age: '12', species: 'Chihuahua', temper: 'Paresseux', address: "30 Rue d'Auteuil, 75016 Paris", description: 'Passe plus de temps dans mes bras plutôt que de marcher par terre !', toys: ['Chaussures', 'Balles'])
dog_11 = Dog.create!(user: user_11, name: 'Souna', age: '3', species: 'Shiba Inu', temper: 'Hyperactif', address: '8 Rue Bénouville, 75016 Paris', description: 'Je sais courir, faire de la moto, du vélo, surfer, il ne me reste plus qu’à apprendre à voler !', toys: ['Balle', 'Sable'])
dog_12 = Dog.create!(user: user_12, name: 'Tellio', age: '4', species: 'Labrador', temper: 'Joueur', address: '19 Rue Vincent Compoint, 75018 Paris', description: 'Dressé par les meilleurs, c’est donc le meilleur.', toys: ['Bâtons', 'Spray poivré'])
dog_13 = Dog.create!(user: user_13, name: 'Tsouky', age: '3', species: 'Golden Retriever', temper: 'Indépendant', address: '9 Rue Versigny, 75018 Paris', description: 'Un expert pour trouver des truffes ! Dommage qu’il les mange toutes...', toys: ['Balle', 'Bâtons'])
dog_14 = Dog.create!(user: user_14, name: 'Papi', age: '11', species: 'Bulldog', temper: 'Possessif', address: '22 Rue du Roule, 75001 Paris', description: 'Un vieux pépère un peu jaloux, mais tellement gentil.', toys: ['Chaussures', 'Balles'])
dog_15 = Dog.create!(user: user_15, name: 'Maurice', age: '8', species: 'Yorkshire', temper: 'Agressif', address: '33 Rue de la Lune, 75002 Paris', description: 'Un caractère bien trempé, comme sa maîtresse.', toys: ['Bâtons', "Flaque d'eau"])
dog_16 = Dog.create!(user: user_16, name: 'Rex', age: '7', species: 'Berger Allemand', temper: 'Indépendant', address: '81bis Rue de la Fontaine au Roi, 75011 Paris', description: 'Une boule de muscles, fort comme un lion, rapide comme un guépard, la vue d’un faucon et l’endurance d’un éléphant ; mais nage comme une enclume', toys: ['Bâtons', 'Haltères'])
dog_17 = Dog.create!(user: user_17, name: 'Marvin', age: '5', species: 'Labrador', temper: 'Agressif', address: '19 Rue de la Solidarité, 75019 Paris', description: 'J’habite actuellement chez mon chien. C’est lui le chef de famille.', toys: ['Chaussures', 'Balles'])
dog_18 = Dog.create!(user: user_18, name: 'Zoro', age: '3', species: 'Chihuahua', temper: 'Craintif', address: '12 Rue Buot, 75013 Paris', description: 'Zoro est un peu peureux, mais il adore découvir de nouveaux paysages !', toys: ['Balle, Bâtons'])
dog_19 = Dog.create!(user: user_19, name: 'Benji', age: '6', species: 'Caniche', temper: 'Joueur', address: '36 Rue Eugène Oudiné, 75013 Paris', description: 'Maitrise les sorts de niveau 1 à 3, niveau 4 en défense contre les forces du mal, maitrise parfaitement le balai. Un peu de mal en potion...', toys: ['Balle', 'Baguette magique'])
dog_20 = Dog.create!(user: user_20, name: 'Serge', age: '12', species: 'Pitbull', temper: 'Craintif', address: '5 Rue de Metz, 75010 Paris', description: 'Il adore les Hotdogs', toys: ['Bâtons', 'Épée'])

puts "Creating places"

place_1 = Place.create!(name: "Parc de Belleville", address: "47 Rue des Couronnes, Paris 20")
place_2 = Place.create!(name: "Jardin du Carré de Baudouin", address: "119 Rue de Ménilmontant, 75020 Paris")
place_3 = Place.create!(name: "Parc Monceau", address: "35 Bd de Courcelles, 75008 Paris")
place_4 = Place.create!(name: "Parc Georges Brassens", address: "2 Pl. Jacques Marette, 75015 Paris")
place_5 = Place.create!(name: "Square du Vert Galant", address: "15 Pl. du Pont Neuf, 75001 Paris")
place_6 = Place.create!(name: "Parc de Bercy", address: "128 Quai de Bercy, 75012 Paris")

puts "Creating reviews"

reviews_1 = Review.create!(place: place_1, user: user_3, content: "Pas ouf...", rating: 2)
reviews_2 = Review.create!(place: place_2, user: user_9, content: "Beau bout de terrain.", rating: 4)
reviews_3 = Review.create!(place: place_3, user: user_8, content: "Lucky a adoré !", rating: 5)
reviews_4 = Review.create!(place: place_4, user: user_14, content: "Trop de chiens.", rating: 1)
reviews_5 = Review.create!(place: place_5, user: user_19, content: "Tout ce qu'on attend d'un parc, sans plus.", rating: 3)
reviews_6 = Review.create!(place: place_6, user: user_2, content: "Très beau, surtout au printemps.", rating: 5)

puts "Creating matches"

match_1 = Match.create!(second_dog: dog_12, dog: dog_7)
match_2 = Match.create!(second_dog: dog_4, dog: dog_7)
match_3 = Match.create!(second_dog: dog_11, dog: dog_7)
match_4 = Match.create!(second_dog: dog_19, dog: dog_7)
match_5 = Match.create!(second_dog: dog_9, dog: dog_7)

puts "Creating likes"

like_1 = Like.create!(user: user_5, dog: dog_7)
like_2 = Like.create!(user: user_2, dog: dog_7)
like_3 = Like.create!(user: user_15, dog: dog_7)

puts "Creating meetings"

meeting_1 = Meeting.create!(place: place_2, date: "2022-08-21", dog: dog_7, second_dog: dog_12)
meeting_2 = Meeting.create!(place: place_2, date: "2022-08-01", dog: dog_7, second_dog: dog_4)
meeting_3 = Meeting.create!(place: place_2, date: "2022-08-08", dog: dog_7, second_dog: dog_19)
meeting_4 = Meeting.create!(place: place_2, date: "2022-07-31", dog: dog_7, second_dog: dog_9)



file = URI.open("https://images.unsplash.com/photo-1537204696486-967f1b7198c8")
file_2 = URI.open("https://images.unsplash.com/photo-1529831129093-0fa4866281ee")
dog_1.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
dog_1.photos.attach(io: file_2, filename: "dogo.png", content_type: "image/png")
dog_1.save

file = URI.open("https://images.unsplash.com/photo-1602241628512-459cdd3234fe?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")
file_2 = URI.open("https://images.unsplash.com/photo-1611250282006-4484dd3fba6b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80")
dog_2.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
dog_2.photos.attach(io: file_2, filename: "nes.png", content_type: "image/png")
dog_2.save

file = URI.open("https://images.unsplash.com/photo-1581562324420-eff2f5aaa4b5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1964&q=80")
file_2 = URI.open("https://images.unsplash.com/photo-1581562444215-837aae0e7e0f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80")
dog_3.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
dog_3.photos.attach(io: file_2, filename: "nes.png", content_type: "image/png")
dog_3.save

file = URI.open("https://images.unsplash.com/photo-1570314032164-6a08c8fa63d2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")
file_2 = URI.open("https://images.unsplash.com/photo-1521309569781-7bcd429eb2f6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")
dog_4.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
dog_4.photos.attach(io: file_2, filename: "nes.png", content_type: "image/png")
dog_4.save

file = URI.open("https://images.unsplash.com/photo-1621757298932-a68ecfdc8137?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")
file_2 = URI.open("https://images.unsplash.com/photo-1513904178077-6c5730ddd446?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8YmxhY2slMjBwb29kbGV8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60")
dog_5.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
dog_5.photos.attach(io: file_2, filename: "nes.png", content_type: "image/png")
dog_5.save

file = URI.open("https://images.unsplash.com/photo-1568034097584-a3063e104ac3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80")
file_2 = URI.open("https://images.unsplash.com/photo-1618809948931-30f2e1a2ee03?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cGl0YnVsbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60")
dog_6.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
dog_6.photos.attach(io: file_2, filename: "nes.png", content_type: "image/png")
dog_6.save

file = URI.open("https://images.unsplash.com/photo-1611610436339-496cfcf1c51f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHNoaWJhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60")
file_2 = URI.open("https://images.unsplash.com/photo-1610632215073-0914404ff012?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHNoaWJhfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60")
dog_7.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
dog_7.photos.attach(io: file_2, filename: "nes.png", content_type: "image/png")
dog_7.save

file = URI.open("https://images.unsplash.com/photo-1605725657590-b2cf0d31b1a5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDF8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60")
file_2 = URI.open("https://images.unsplash.com/photo-1589941013453-ec89f33b5e95?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=767&q=80")
dog_8.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
dog_8.photos.attach(io: file_2, filename: "nes.png", content_type: "image/png")
dog_8.save

file = URI.open("https://images.unsplash.com/photo-1526440847959-4e38e7f00b04?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80")
file_2 = URI.open("https://images.unsplash.com/photo-1610389712622-73f621ff06bf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDJ8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60")
dog_9.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
dog_9.photos.attach(io: file_2, filename: "nes.png", content_type: "image/png")
dog_9.save

file = URI.open("https://images.unsplash.com/photo-1608228028188-acdf9ebd3044?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80")
file_2 = URI.open("https://images.unsplash.com/photo-1607386176712-d8baeb6178a7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80")
dog_10.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
dog_10.photos.attach(io: file_2, filename: "nes.png", content_type: "image/png")
dog_10.save

file = URI.open("https://images.unsplash.com/photo-1575535468632-345892291673?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")
file_2 = URI.open("https://images.unsplash.com/photo-1618173745201-8e3bf8978acc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=765&q=80")
dog_11.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
dog_11.photos.attach(io: file_2, filename: "nes.png", content_type: "image/png")
dog_11.save

file = URI.open("https://images.unsplash.com/photo-1629102902031-7490bf7a6d41?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=627&q=80")
file_2 = URI.open("https://images.unsplash.com/photo-1623052940978-051d2c0fb4be?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80")
dog_12.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
dog_12.photos.attach(io: file_2, filename: "nes.png", content_type: "image/png")
dog_12.save

file = URI.open("https://images.unsplash.com/photo-1626736637845-53045bb9695b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8Z29sZGVuJTIwcmV0cmlldmVyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60")
file_2 = URI.open("https://images.unsplash.com/photo-1581285217236-a2355291f9c9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGdvbGRlbiUyMHJldHJpZXZlcnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60")
dog_13.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
dog_13.photos.attach(io: file_2, filename: "nes.png", content_type: "image/png")
dog_13.save

file = URI.open("https://images.unsplash.com/photo-1521907554502-7440e4702fc3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8YnVsbGRvZ3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60")
file_2 = URI.open("https://images.unsplash.com/photo-1521907236370-15adf2297445?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1yZWxhdGVkfDR8fHxlbnwwfHx8fA%3D%3D&auto=format&fit=crop&w=500&q=60")
dog_14.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
dog_14.photos.attach(io: file_2, filename: "nes.png", content_type: "image/png")
dog_14.save

file = URI.open("https://i.pinimg.com/564x/60/02/04/600204e0ff51fd4417d0e5a219a6db1a.jpg")
file_2 = URI.open("https://i.pinimg.com/564x/41/c7/3a/41c73a41180ea2dd09da0c44656d18ce.jpg")
dog_15.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
dog_15.photos.attach(io: file_2, filename: "nes.png", content_type: "image/png")
dog_15.save

file = URI.open("https://images.unsplash.com/photo-1548364758-83d6de049243?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjd8fGdlcm1hbiUyMHNoZXBoZXJkfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60")
file_2 = URI.open("https://images.unsplash.com/photo-1625321483581-e4b662b8abf1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzB8fGdlcm1hbiUyMHNoZXBoZXJkfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60")
dog_16.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
dog_16.photos.attach(io: file_2, filename: "nes.png", content_type: "image/png")
dog_16.save

file = URI.open("https://images.unsplash.com/photo-1580553680518-54cc86c7f194?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80")
file_2 = URI.open("https://images.unsplash.com/photo-1585559700398-1385b3a8aeb6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80")
dog_17.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
dog_17.photos.attach(io: file_2, filename: "nes.png", content_type: "image/png")
dog_17.save

file = URI.open("https://images.unsplash.com/photo-1617218326259-2a338a730d1c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=705&q=80")
file_2 = URI.open("https://images.unsplash.com/photo-1605639156481-244775d6f803?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGNoaWh1YWh1YXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60")
dog_18.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
dog_18.photos.attach(io: file_2, filename: "nes.png", content_type: "image/png")
dog_18.save

file = URI.open("https://images.unsplash.com/photo-1596207143439-9a9fab470a06?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHBvb2RsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60")
file_2 = URI.open("https://images.unsplash.com/photo-1596805827513-33a7b2523abf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fHBvb2RsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60")
dog_19.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
dog_19.photos.attach(io: file_2, filename: "nes.png", content_type: "image/png")
dog_19.save

file = URI.open("https://images.unsplash.com/photo-1571868094976-6af3b50b43bc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8cGl0YnVsbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60")
file_2 = URI.open("https://images.unsplash.com/photo-1550450888-a1ad510ccacc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGl0YnVsbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60")
dog_20.photos.attach(io: file, filename: "nes.png", content_type: "image/png")
dog_20.photos.attach(io: file_2, filename: "nes.png", content_type: "image/png")
dog_20.save

puts "Almost done..."

file = URI.open("https://images.unsplash.com/photo-1531945086322-64e2ffae14a6?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8bWFsZXx8fHx8fDE2NjE5NTU2NzY&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080")
user_1.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user_1.save

file = URI.open("https://images.unsplash.com/photo-1468852677467-06a0f71c46f2?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8bWFsZXx8fHx8fDE2NjE5NTU3MTQ&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080")
user_2.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user_2.save

file = URI.open("https://images.unsplash.com/photo-1546578623-d1d3af878403?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8d29tZW58fHx8fHwxNjYxOTU1OTgy&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080")
user_3.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user_3.save

file = URI.open("https://images.unsplash.com/photo-1553404633-859669c11246?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8d29tZW58fHx8fHwxNjYxOTU2MDA0&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080")
user_4.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user_4.save

file = URI.open("https://images.unsplash.com/photo-1573878741117-1653384427db?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8d29tZW58fHx8fHwxNjYxOTU2MDE5&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080")
user_5.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user_5.save

file = URI.open("https://images.unsplash.com/photo-1615125990475-b318176a49cc?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8d29tZW58fHx8fHwxNjYxOTU2MDMy&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080")
user_6.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user_6.save

file = URI.open("https://images.unsplash.com/photo-1489424731084-a5d8b219a5bb?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8d29tZW58fHx8fHwxNjYxOTU2MDQz&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080")
user_7.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user_7.save

file = URI.open("https://images.unsplash.com/photo-1588731234159-8b9963143fca?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8bWFsZXx8fHx8fDE2NjE5NTU3MzU&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080")
user_8.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user_8.save

file = URI.open("https://images.unsplash.com/photo-1455465341503-ed7916fb9cd1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8bWFsZXx8fHx8fDE2NjE5NTU3NTc&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080")
user_9.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user_9.save

file = URI.open("https://images.unsplash.com/photo-1636308600707-e19abecd6246?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8d29tZW58fHx8fHwxNjYxOTU2MDY2&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080")
user_10.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user_10.save

file = URI.open("https://i0.wp.com/www.dailycal.org/assets/uploads/2019/03/michael_nbc_courtesy-copy.jpg?ssl=1")
user_11.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user_11.save

file = URI.open("https://figurinepop.com/public/2021/09/dwightschrute1_2.jpg")
user_12.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user_12.save

file = URI.open("https://lentrepreneur.co/wp-content/uploads/2022/03/Peacock-696x392.jpg")
user_13.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user_13.save

file = URI.open("https://images.unsplash.com/photo-1570751057973-1b84c959ff86?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8d29tZW58fHx8fHwxNjYxOTU2MTAw&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080")
user_14.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user_14.save

file = URI.open("https://images.unsplash.com/photo-1530047198515-516ff90fc4d9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8d29tZW58fHx8fHwxNjYxOTU2MTI0&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080")
user_15.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user_15.save

file = URI.open("https://images.unsplash.com/photo-1480455624313-e29b44bbfde1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8bWFsZXx8fHx8fDE2NjE5NTU3NzE&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080")
user_16.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user_16.save

file = URI.open("https://images.unsplash.com/photo-1564564321837-a57b7070ac4f?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8bWFsZXx8fHx8fDE2NjE5NTU3OTk&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080")
user_17.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user_17.save

file = URI.open("https://a1cf74336522e87f135f-2f21ace9a6cf0052456644b80fa06d4f.ssl.cf2.rackcdn.com/images/characters/large/800/Angela-Martin.The-Office.webp")
user_18.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user_18.save

file = URI.open("https://images.unsplash.com/photo-1564463836146-4e30522c2984?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8d29tZW58fHx8fHwxNjYxOTU2MTM5&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080")
user_19.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user_19.save

file = URI.open("https://images.unsplash.com/photo-1494354145959-25cb82edf23d?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwxfDB8MXxyYW5kb218MHx8d29tZW58fHx8fHwxNjYxOTU2MTY4&ixlib=rb-1.2.1&q=80&utm_campaign=api-credit&utm_medium=referral&utm_source=unsplash_source&w=1080")
user_20.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
user_20.save

file = URI.open("https://cloudfront-eu-central-1.images.arcpublishing.com/leparisien/GQ4C63XNMSPWEME2CP7IZFCLFI.jpg")
place_1.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
place_1.save

file = URI.open("https://cdn.paris.fr/eqpts-prod/2022/05/10/821b66ef82d044341a38ecc77cd1ec33.jpg")
place_2.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
place_2.save

file = URI.open("http://paris1900.lartnouveau.com/paris08/parc_monceau/accueil/1pmonc6.JPG")
place_3.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
place_3.save

file = URI.open("https://offloadmedia.feverup.com/parissecret.com/wp-content/uploads/2018/03/19141411/shutterstock_1513396970-1-scaled.jpg")
place_4.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
place_4.save

file = URI.open("https://www.unjourdeplusaparis.com/wp-content/uploads/2012/04/vue-vert-galant.jpg")
place_5.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
place_5.save

file = URI.open("http://paris1900.lartnouveau.com/paris12/parc_de_bercy/accueil/1parc_berc55.jpg")
place_6.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
place_6.save

puts "All done"

end_time = Time.new

delta = end_time - start_time

puts "Seeding took #{(delta / 60).round(1)} minutes"
