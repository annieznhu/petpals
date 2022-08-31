# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "start seeding"

puts "destroy old data"

Dog.destroy_all
User.destroy_all
Place.destroy_all
Review.destroy_all
Match.destroy_all
Like.destroy_all
Meeting.destroy_all

puts "old data destroyed"

puts "create users"

user_1 = User.create!(first_name: 'Charles', last_name: 'Sanse', email: 'charles.sanse@mail.com', username: 'CharlesSanse', password: 'azerty', description: 'J’ai grandi avec des animaux, j’adore les chiens.')
user_2 = User.create!(first_name: 'Anthony', last_name: 'Plisson', email: 'anthony.plisson@laposte.net', username: 'AntoP', password: 'azerty', description: 'J’ai Sirius depuis 3 ans maintenant il est la star du parc')
user_3 = User.create!(first_name: 'Nadia', last_name: 'Fluck', email: 'nadia-fluck@yahoo.fr', username: 'NadiaFluuuck', password: 'azerty', description: 'Je viens d’emménager dans le quartier avec Izy, je lui cherche des amis')
user_4 = User.create!(first_name: 'Julia', last_name: 'Martinez', email: 'julia.martinez@gmail.com', username: 'JujuTravel', password: 'azerty', description: 'il a un gros ventre comme son maitre.. du coup j’essaie de le faire bouger')
user_5 = User.create!(first_name: 'Déborah', last_name: 'Brignon', email: 'debobo@gmail.com', username: 'Debobo', password: 'azerty', description: 'Je ne connais pas du tout le quartier !')
user_6 = User.create!(first_name: 'Mélinda ', last_name: 'Kieboom', email: 'melinda-kieboom@hotmail.fr', username: 'Méli01', password: 'azerty', description: 'J’ai 1 chiens et 6 chats, je veux lui faire plein d’amis.')
user_7 = User.create!(first_name: 'Manon', last_name: 'Ingrassi', email: 'manon.ingrassi@gmail.com', username: 'ManoMano', password: 'azerty', description: 'Je connais plain de coin sympa, mais Tofu s’ennui tout seul.')
user_8 = User.create!(first_name: 'Didier', last_name: 'Plantard', email: 'didierplantard@yahoo.fr', username: 'LaMachine', password: 'azerty', description: 'J’adore la bidoche, et Lucky aussi')
user_9 = User.create!(first_name: 'Thibault', last_name: 'Romarin', email: 'hdp@icloud.com', username: 'HDP', password: 'azerty', description: 'Advienne que pourra.')
user_10 = User.create!(first_name: 'Marie-Julie', last_name: 'Cotta', email: 'marie-julie.cotta@hotmail.fr', username: 'Pipou', password: 'azerty', description: 'J’ai peur des gros chiens, et  Stormy les attaques à vu.')
user_11 = User.create!(first_name: 'Michael ', last_name: 'Scott', email: 'michael-scott@wanadoo.fr', username: 'TheManager', password: 'azerty', description: 'Je suis très occupé par mon travail, mais je trouve toujours du temps pour Souna')
user_12 = User.create!(first_name: 'Dwight', last_name: 'Schrute', email: 'dwight.schrute@gmail.com', username: 'AssistantRegionalManager', password: 'azerty', description: 'J’apprend à mon Labrador tout ce qu’il doit savoir pour survivre dans la nature.')
user_13 = User.create!(first_name: 'Kevin', last_name: 'Malone', email: 'kmalone@scranton.com', username: 'ChiliGuy', password: 'azerty', description: 'Tsouky ne veux plus jouer à la balle. Je lui cherche un ami pour sortir')
user_14 = User.create!(first_name: 'Angela', last_name: 'Martin ', email: 'angela.martin@yahoo.fr', username: 'Kitty', password: 'azerty', description: 'Papi n’est pas un Bulldog comme les autres, on adore se faire belle ensemble.')
user_15 = User.create!(first_name: 'Jannette', last_name: 'Levingston', email: 'jan.levingston@gmail.com', username: 'Janny', password: 'azerty', description: 'Maurice et moi sommes très difficile sur les choix de nos partenaires.')
user_16 = User.create!(first_name: 'Jean', last_name: 'Neymar', email: 'neyney@psg.fr', username: 'JenNey', password: 'azerty', description: 'Rex m’aide lors de mes sorties jogging, il me permet de me surpasser')
user_17 = User.create!(first_name: 'Christophe', last_name: 'Devachane', email: 'devach@tf1.fr', username: 'Dechav', password: 'azerty', description: 'J’ai besoin d’aide pour calmer mon chien il a bien plus d’énergie que moi…')
user_18 = User.create!(first_name: 'Lara', last_name: 'Croft', email: 'crofty@gmx.com', username: 'Crofty', password: 'azerty', description: 'Je suis nouvelle dans ces terres, j’ai vraiment hâte de découvrir les environs avec mon compagnon')
user_19 = User.create!(first_name: 'Hermione', last_name: 'Grange', email: 'wingardium@leviosa.aaa', username: 'RonMorron', password: 'azerty', description: 'Mon chien m’aide a me défendre contre les détraqueurs et les mangemorts')
user_20 = User.create!(first_name: 'Jeanne', last_name: 'Marc', email: 'brulee@vive.fr', username: 'Fire', password: 'azerty', description: 'Toujours chaude pour une balade !')

puts "create! dogs"

dog_1 = Dog.create!(user: user_1 ,name: 'Medor', age: '3', species: 'Labrador', temper: 'Hyperactif', address: '5 Rue Fortuny, 75017 Paris', description: 'Beaucoup (trop) d’énergie à dépenser mais toujours bienveillant avec les enfants.', toys: ['Balle, Bâtons'])
dog_2 = Dog.create!(user: user_2 ,name: 'Majax', age: '5', species: 'Golden Retriever', temper: 'Joueur', address: '52 Rue Saint-Lazare, 75009 Paris', description: 'Très gentil et affectueux, prudent avec les plus petit chien ', toys: ['Chaussures'])
dog_3 = Dog.create!(user: user_3 ,name: 'Sirius', age: '9', species: 'Caniche', temper: 'Amical', address: '48 Bd de Vaugirard, 75015 Paris', description: 'Tout mimi pas très à l’aise avec les gros chien très dynamique', toys: ['Balles'])
dog_4 = Dog.create!(user: user_4 ,name: 'Izy', age: '7', species: 'Bulldog', temper: 'Paresseux', address: '9 Rue Jules Romains, 75019 Paris', description: 'Gros lard, pas très virulent mais très câlin ', toys: ['Chaussures'])
dog_5 = Dog.create!(user: user_5 ,name: 'Groupi', age: '1', species: 'Caniche', temper: 'Hyperactif', address: '2 Rue Saint-Lazare, 75009 Paris', description: 'Heureusement qu’il a des petites jambes, sinon je ne pourrais pas le suivre !!', toys: ['Bâtons'])
dog_6 = Dog.create!(user: user_6 ,name: 'Pipou', age: '1', species: 'Pitbull', temper: 'Indépendant', address: '57 Rue du Simplon, 75018 Paris', description: 'Très curieux, mieux vaut me garder en laisse haha', toys: ['Bâtons'])
dog_7 = Dog.create!(user: user_7 ,name: 'Tofu', age: '2', species: 'Shiba Inu', temper: 'Amical', address: '30 Rue las Cases, 75007 Paris', description: 'Un mec super sympa plein de vie et qui adore manger ce qui traîne par terre', toys: ['Balle'])
dog_8 = Dog.create!(user: user_8 ,name: 'Lucky', age: '1', species: 'Berger Allemand', temper: 'Joueur', address: '12 Rue de Malte, 75011 Paris', description: 'Gros gourmand et grand sportif ! j’adore faire courir mes maîtres !', toys: ['Bâtons'])
dog_9 = Dog.create!(user: user_9 ,name: 'Aria', age: '9', species: 'Yorkshire', temper: 'Amical', address: '3 Rue Frédéric Loliée, 75020 Paris', description: 'Petite princesse, je n’ai aucun mal à approcher mes semblables', toys: ['Bâtons'])
dog_10 = Dog.create!(user: user_10, name: 'Stormy', age: '12', species: 'Chihuahua', temper: 'Paresseux', address: "30 Rue d'Auteuil, 75016 Paris", description: 'Passe plus de temps dans mes bras plutôt que de marcher par terre !', toys: ['Chaussures, Balles'])
dog_11 = Dog.create!(user: user_11, name: 'Souna', age: '3', species: 'Shiba Inu', temper: 'Hyperactif', address: '8 Rue Bénouville, 75016 Paris', description: 'Je sais courir, faire de la moto, du vélo, surfer, il ne me reste plus qu’à apprendre à voler !', toys: ['Balle'])
dog_12 = Dog.create!(user: user_12, name: 'Tellio', age: '4', species: 'Labrador', temper: 'Joueur', address: '19 Rue Vincent Compoint, 75018 Paris', description: 'Dresser par les meilleurs, c’est donc le meilleur.', toys: ['Bâtons'])
dog_13 = Dog.create!(user: user_13, name: 'Tsouky', age: '3', species: 'Golden Retriever', temper: 'Indépendant', address: '9 Rue Versigny, 75018 Paris', description: 'Un expert pour trouver des truffes ! Dommage qu’il les mangent toutes..', toys: ['Balle, Bâtons'])
dog_14 = Dog.create!(user: user_14, name: 'Papi', age: '11', species: 'Bulldog', temper: 'Possessif', address: '22 Rue du Roule, 75001 Paris', description: 'Un vieux pépère un peu jaloux mais tellement gentil.', toys: ['Chaussures, Balles'])
dog_15 = Dog.create!(user: user_15, name: 'Maurice', age: '8', species: 'Yorkshire', temper: 'Agressif', address: '33 Rue de la Lune, 75002 Paris', description: 'Un caractère bien trempé comme sa maitresse.', toys: ['Bâtons'])
dog_16 = Dog.create!(user: user_16, name: 'Rex', age: '7', species: 'Berger Allemand', temper: 'Indépendant', address: '81bis Rue de la Fontaine au Roi, 75011 Paris', description: 'Une boule de muscle, fort comme un lion, rapide comme un guépard, la vue d’un faucon et l’endurance d’un éléphant. mais nage comme une enclume', toys: ['Bâtons'])
dog_17 = Dog.create!(user: user_17, name: 'Marvin', age: '5', species: 'Labrador', temper: 'Agressif', address: '19 Rue de la Solidarité, 75019 Paris', description: 'J’habite actuellement chez mon chien. C’est lui le chef de famille.', toys: ['Chaussures, Balles'])
dog_18 = Dog.create!(user: user_18, name: 'Zoro', age: '3', species: 'Chihuahua', temper: 'Craintif', address: '12 Rue Buot, 75013 Paris', description: 'Zoro est un peu peureux, mais il adore découvir de nouveaux paysage !', toys: ['Balle, Bâtons'])
dog_19 = Dog.create!(user: user_19, name: 'Benji', age: '6', species: 'Caniche', temper: 'Joueur', address: '36 Rue Eugène Oudiné, 75013 Paris', description: 'Maitrise les sorts de niveau 1 à 3, niveau 4 en défense contre les forces du mal, maitrise parfaitement le balai. Un peu de mal en potion', toys: ['Balle'])
dog_20 = Dog.create!(user: user_20, name: 'Serge', age: '11', species: 'Pitbull', temper: 'Craintif', address: '5 Rue de Metz, 75010 Paris', description: ' Il adore les Hotdogs', toys: ['Bâtons'])

puts "create places"

place_1 = Place.create!(name: "Parc de Belleville", address: "47 Rue des Couronnes, Paris 20")
place_2 = Place.create!(name: "Jardin du Carré de Baudouin", address: "119 Rue de Ménilmontant, 75020 Paris")
place_3 = Place.create!(name: "Parc Monceau", address: "35 Bd de Courcelles, 75008 Paris")
place_4 = Place.create!(name: "Parc Georges Brassens", address: "2 Pl. Jacques Marette, 75015 Paris")
place_5 = Place.create!(name: "Square du Vert Galant", address: "15 Pl. du Pont Neuf, 75001 Paris")
place_6 = Place.create!(name: "Parc de Bercy", address: "128 Quai de Bercy, 75012 Paris")

puts "create reviews"

reviews_1 = Review.create!(place: place_1, user: user_3, content: "pas ouf.", rating: 2)
reviews_2 = Review.create!(place: place_2, user: user_9, content: "beau bout de terrain.", rating: 4)
reviews_3 = Review.create!(place: place_3, user: user_8, content: "Lucky a adoré !", rating: 5)
reviews_4 = Review.create!(place: place_4, user: user_14, content: "trop de chien.", rating: 1)
reviews_5 = Review.create!(place: place_5, user: user_19, content: "Tout ce qu'on attend d'un parc, sans plus.", rating: 3)
reviews_6 = Review.create!(place: place_6, user: user_2, content: "Très beau, surtout au printemps.", rating: 5)

puts "create matches"

match_1 = Match.create!(dog: dog_12 , second_dog: dog_7)
match_2 = Match.create!(dog: dog_4 , second_dog: dog_7)
match_3 = Match.create!(dog: dog_11 , second_dog: dog_7)
match_4 = Match.create!(dog: dog_19 , second_dog: dog_7)
match_5 = Match.create!(dog: dog_9 , second_dog: dog_7)

puts "create likes"

like_1 = Like.create!(user: user_5, dog: dog_7)
like_2 = Like.create!(user: user_2, dog: dog_7)
like_3 = Like.create!(user: user_15, dog: dog_7)

puts "create meetings"

meeting_1 = Meeting.create!(place: place_2, date: "2022-08-21", dog: dog_7, second_dog: dog_12)
meeting_2 = Meeting.create!(place: place_2, date: "2022-08-01", dog: dog_7, second_dog: dog_4)
meeting_3 = Meeting.create!(place: place_2, date: "2022-08-08", dog: dog_7, second_dog: dog_19)
meeting_4 = Meeting.create!(place: place_2, date: "2022-07-31", dog: dog_7, second_dog: dog_9)

puts "All done"




