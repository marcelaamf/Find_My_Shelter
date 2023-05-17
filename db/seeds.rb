# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Seeding Data ..."

# Helper functions
def open_asset(file_name)
  File.open(Rails.root.join('db', 'seed_assets', file_name))
end

# Only run on development (local) instances not on production, etc.
unless Rails.env.development?
  puts "Development seeds only (for now)!"
  exit 0
end

# Let's do this ...

## CATEGORIES

puts "Finding or Creating Categories ..."

# cat1 = Category.find_or_create_by! name: 'Evergreens'
# cat2 = Category.find_or_create_by! name: 'Shrubs'
# cat3 = Category.find_or_create_by! name: 'Trees'
cat1 = Category.find_or_create_by! name: 'Emergency'
cat2 = Category.find_or_create_by! name: 'Domestic Violence'
cat3 = Category.find_or_create_by! name: 'Drug Abuse'

## PRODUCTS

puts "Re-creating Products ..."

Product.destroy_all

cat1.shelters.create!({
  name:  "The Mustard Seed",
  women_capacity: 25,
  men_capacity: 30,
  children_capacity: 15,
  current_residents: 20,
  accept_man: true,
  accept_woman: true,
  youth_only: false,
  accept_kids: true,
  counselling_service: true,
  clothing: true,
  restroom_service: true,
  cafeteria: false,
  address: "102 11 Ave SE, Calgary, AB T2G 0X5",
  phone: "1·833·GIV·HOPE (448·4673)",
  email:"info@theseed.ca",
  description:"The Mustard Seed is a Christian non-profit organization that has been caring for individuals experiencing homelessness and poverty since 1984. Operating in five cities across Alberta and British Columbia, The Mustard Seed is a supportive haven where people can have their physical, mental, and spiritual needs met and grow toward greater health and independence.",
})

cat1.shelters.create!({
  name:  "Alpha House",
  women_capacity: 15,
  men_capacity: 25,
  children_capacity: 0,
  current_residents: 15,
  accept_man: true,
  accept_woman: true,
  youth_only: false,
  accept_kids: false,
  counselling_service: true,
  clothing: false,
  restroom_service: true,
  cafeteria: true,
  address: "203 15 Avenue SE, Calgary, AB T2G 1G4",
  phone: "403-234-7388",
  email:"info@alphahousecalgary.com",
  description:"Alpha House Society is a non-profit, charitable agency providing safe and caring environments for individuals whose lives are affected by alcohol and other substance dependencies. Calgary Alpha House Society was established in 1981 as a committed response to a marginalized population of men and women who are addicted to alcohol or other drugs and living vulnerable on the streets of Calgary.",
})

cat2.shelters.create!({
  name:  "Calgary Women's Emergency Shelter",
  women_capacity: 30,
  men_capacity: 0,
  children_capacity: 30,
  current_residents: 20,
  accept_man: false,
  accept_woman: true,
  youth_only: false,
  accept_kids: true,
  counselling_service: true,
  clothing: false,
  restroom_service: false,
  cafeteria: false,
  address: "500-1509 Centre St SW, Calgary, AB T2G 2E6",
  phone: "403.539.5129",
  email:"info@cwes.ca",
  description:"The Calgary Women’s Emergency Shelter is focused on ending family violence and abuse in the lives of women, children, and youth. Taking a Stand Against Family Violence in the community since 1974, the agency has helped over 260,000 Calgarians build safe lives and healthy relationships. We are on the front lines to provide hope and support to some of the most vulnerable members of our community. Taking a Stand Against Family Violence in the community since 1974, the agency has helped over 260,000 Calgarians build safe lives and healthy relationships. We are on the front lines to provide hope and support to some of the most vulnerable members of our community.
  Though the Emergency Shelter is the cornerstone of the organization, it is “More than a Shelter”, serving approximately 15,000 clients each year through a number of innovative safety, healing and prevention programs.",
})

cat3.shelters.create!({
  name:  "Lorem Ipsum",
  women_capacity: 10,
  men_capacity: 10,
  children_capacity: 20,
  current_residents: 0,
  accept_man: true,
  accept_woman: true,
  youth_only: false,
  accept_kids: true,
  counselling_service: true,
  clothing: true,
  restroom_service: true,
  cafeteria: true,
  address: "123-500 South St SE, Calgary, AB T2G 9A1",
  phone: "403.411.4319",
  email:"info@li.ca",
  description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam convallis ante id nulla ultricies pulvinar. Quisque placerat ac ligula et tempus. Aenean ac nulla vel dolor lacinia sodales. Fusce vitae dui non nunc pretium convallis. Curabitur faucibus pretium lacus eget consequat. Aliquam eleifend, tellus nec imperdiet feugiat, neque dui luctus massa, a laoreet ligula nisl vel felis. Suspendisse et urna est. Ut vehicula purus in orci elementum tristique. In tempor sem a urna tempus gravida.",
})

# cat1.products.create!({
#   name:  'Giant Tea',
#   description: "The Giant Tea is an uncommon, medium-sized plant and can be found only in some tundras. It blooms twice a year, for 3 weeks.
#   It has narrow, paired leaves, which are usually yellow-green. It also grows large flowers, which can be blue, bronze, light yellow, purple and light grey.
  
#   These plants grow in decent numbers, but it's near impossible to control and maintain their growth.
#   They can be used as an anesthetic.
  
#   As a defense mechanism the Giant Tea grow slippery leaves to prevent insects from easily eaten them.
#   They rely on animal pollination to reproduce. To promote pollination, they produce aromatic scents.",
#   image: open_asset('plante_1.jpg'),
#   quantity: 0,
#   price: 64.99
# })

# cat1.products.create!({
#   name:  'Lion Grapevine',
#   description: "The Lion Grapevine is an uncommon, modest plant and can be found only in some humid regions. It blooms once a year, for 4 months.
#   It has wide, squared leaves, which are usually purple. It also grows tiny flowers, which can be dark bronze and orange.
  
#   These plants grow in large groups, but it's really tricky to control and maintain their growth.
#   They can be brewed as tea.
  
#   As a defense mechanism the Lion Grapevine grows small thorns.
#   They rely on wind pollination to reproduce. Once pollinated, they grow small, inedible fruits.",
#   image: open_asset('plante_3.jpg'),
#   quantity: 4,
#   price: 34.49
# })

# cat1.products.create!({
#   name:  'Bone Coneflower',
#   description: "The Bone Coneflower is an uncommon, small plant and can be found only in some forests. It blooms in early spring.
#   It has thick, paired leaves, which are usually blue-green. It also grows large flowers, which can be dark blue, dark orange and light brown.
  
#   These plants grow within short distances from each other, but it's a bit tricky to control and maintain their growth.
#   They can be used to treat wounds.
  
#   As a defense mechanism the Bone Coneflower is poisonous for most creatures.
#   They rely on self pollination to reproduce. Once pollinated, they grow fairly large, inedible fruits.",
#   image: open_asset('plante_4.jpg'),
#   quantity: 8,
#   price: 24.99
# })

# cat1.products.create!({
#   name:  'Enirthelda',
#   description: "The Enirthelda is an uncommon, large plant and can be found only in some forests. It blooms once a year, for 2 months.
#   It has narrow, barb shaped leaves, which are usually blue-green. It also grows huge flowers, which can be purple and light red.
  
#   These plants grow in small numbers, but it's extremely easy to control and maintain their growth.
#   They can be cooked and eaten.
  
#   As a defense mechanism the Enirthelda produces a thick, sticky wax.
#   They rely on wind pollination to reproduce. Once pollinated, they grow fairly large, inedible nuts.",
#   image: open_asset('plante_5.jpg'),
#   quantity: 8,
#   price: 124.99
# })

# cat1.products.create!({
#   name:  'Swamp Root',
#   description: "The Swamp Root is a very common, huge plant and can be found in most subarctic regions. It blooms once a year, for 1 week.
#   It has wide, egg shaped leaves, which are usually blue-green. It also grows tiny flowers, which can be dark pink, light purple and dark red.
  
#   These plants grow in large groups, but it's extremely easy to control and maintain their growth.
#   They can be used to create a poison.
  
#   As a defense mechanism the Swamp Root taste extremely sour.
#   They rely on animal pollination to reproduce. To promote pollination, they produce a delicious nectar.",
#   image: open_asset('plante_6.jpg'),
#   quantity: 82,
#   price: 24.49
# })


# cat2.products.create!({
#   name:  'Sweet Hops',
#   description: "The Sweet Hop is a rare, medium-sized plant and can be found only at lake borders. It blooms twice a year, for 2 months.
#   It has thin, diamond shaped leaves, which are usually light red. It also grows tiny flowers, which can be dark pink, brown and pink.
  
#   These plants grow in large groups, but it's hard, especially without experience, to control and maintain their growth.
#   They have no real use, besides their aesthetics.
  
#   As a defense mechanism the Sweet Hop relies mostly on its surroundings to survive.
#   They rely on self pollination to reproduce. Once pollinated, they grow fairly large, delicious nuts.",
#   image: open_asset('plante_7.jpg'),
#   quantity: 40,
#   price: 64.49
# })

# cat2.products.create!({
#   name:  'Tangle Azolla',
#   description: "The Tangle Azolla is a very rare, modest plant and can be found in any cold region. It blooms once a year, for 2 months.
#   It has wide, palmate leaves, which are usually light orange. It also grows tiny flowers, which can be light grey, white, light blue, light purple and light gold.
  
#   These plants grow in large groups, but it's near impossible to control and maintain their growth.
#   They have no use, but look nice in gardens.
  
#   As a defense mechanism the Tangle Azolla grow slippery leaves to prevent insects from easily eaten them.
#   They rely on self pollination to reproduce. Once pollinated, they grow delicious, small fruits.",
#   image: open_asset('plante_8.jpg'),
#   quantity: 3,
#   price: 24.99
# })

# cat2.products.create!({
#   name:  'Krapliper',
#   description: "The Krapliper is a rare, modest plant and can be found only in deserts. It blooms once a year, for 2 weeks.
#   It has thick, sickle shaped leaves, which are usually lime green. It also grows tiny flowers, which can be light bronze, orange and gold.
  
#   These plants grow within short distances from each other, but it's really difficult to control and maintain their growth.
#   They can be used to treat wounds.
  
#   As a defense mechanism the Krapliper produces a thick, sticky wax.
#   They rely on self pollination to reproduce. Once pollinated, they grow fairly large, inedible fruits.",
#   image: open_asset('plante_9.jpg'),
#   quantity: 32,
#   price: 1999.99
# })

# cat3.products.create!({
#   name:  'Eesrorn',
#   description: "The Eesrorn is a very common, tall plant and can be found in most subarctic regions. It blooms twice a year, for 2 months.
#   It has large, needle leaves, which are usually light yellow. It also grows decent sized flowers, which can be light grey, yellow and light blue.
  
#   These plants grow separated by a fair distance from each other, but it's hard to control and maintain their growth.
#   They have no real use.
  
#   As a defense mechanism the Eesrorn has a thick, wooden stem.
#   They rely on water currents to carry their seeds away to reproduce. Once pollinated, they grow fairly large, inedible fruits.",
#   image: open_asset('plante_10.jpg'),
#   quantity: 320,
#   price: 39.99
# })

# cat3.products.create!({
#   name:  'Void Fennel',
#   description: "The Void Fennel is an uncommon, tall plant and can be found only in some snowy regions. It blooms in late autumn.
#   It has narrow, elliptic leaves, which are usually mint green. It also grows large flowers, which can be dark orange, bronze, dark grey and dark pink.
  
#   These plants grow alone, but within a decent distance from each other, but it's very easy to control and maintain their growth.
#   They have no real use, besides their aesthetics.
  
#   As a defense mechanism the Void Fennel has a thick, wooden stem.
#   They rely on water currents to carry their seeds away to reproduce. Once pollinated, they grow fairly large, inedible fruits.",
#   image: open_asset('plante_11.jpg'),
#   quantity: 2,
#   price: 87.65
# })

# cat3.products.create!({
#   name:  'Cliff Collard',
#   description: "The Cliff Collard is a very rare, tiny plant and can be found in damp places. It blooms twice a year, for 1 week.
#   It has wide, spear shaped leaves, which are usually lime green. It also grows quite large flowers, which can be silver, light brown and light red.
  
#   These plants grow within short distances from each other, but it's fairly hard to control and maintain their growth.
#   They can be brewed as tea.
  
#   As a defense mechanism the Cliff Collard grows thick thorns.
#   They rely on winds to carry their seeds away to reproduce. Once pollinated, they grow small, inedible fruits.",
#   image: open_asset('plante_12.jpg'),
#   quantity: 23,
#   price: 79.99
# })




puts "DONE!"


# Photo by <a href="https://unsplash.com/@scottwebb?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Scott Webb</a> on <a href="https://unsplash.com/?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Unsplash</a>
# Photo by <a href="https://unsplash.com/@sarahdorweiler?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Sarah Dorweiler</a> on <a href="https://unsplash.com/?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Unsplash</a>
# Photo by <a href="https://unsplash.com/@tegethoff?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Mark Tegethoff</a> on <a href="https://unsplash.com/?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Unsplash</a>
# Photo by <a href="https://unsplash.com/@danielcgold?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Dan Gold</a> on <a href="https://unsplash.com/?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Unsplash</a>
# Photo by <a href="https://unsplash.com/@feeypflanzen?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Severin Candrian</a> on <a href="https://unsplash.com/?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Unsplash</a>
# Photo by <a href="https://unsplash.com/@karishea?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Kari Shea</a> on <a href="https://unsplash.com/?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Unsplash</a>
# Photo by <a href="https://unsplash.com/@nate_dumlao?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Nathan Dumlao</a> on <a href="https://unsplash.com/?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Unsplash</a>
# Photo by <a href="https://unsplash.com/@galina88?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Galina N</a> on <a href="https://unsplash.com/?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Unsplash</a>
# Photo by <a href="https://unsplash.com/@brina_blum?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Brina Blum</a> on <a href="https://unsplash.com/?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Unsplash</a>
# Photo by <a href="https://unsplash.com/@jonathanborba?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Jonathan Borba</a> on <a href="https://unsplash.com/?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Unsplash</a>
# Photo by <a href="https://unsplash.com/@karaeads?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Kara Eads</a> on <a href="https://unsplash.com/?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Unsplash</a>
# Photo by <a href="https://unsplash.com/@mrlessy?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Kevin Lessy</a> on <a href="https://unsplash.com/?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Unsplash</a>
# Photo by <a href="https://unsplash.com/@szmigieldesign?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Lukasz Szmigiel</a> on <a href="https://unsplash.com/s/photos/forest?utm_source=unsplash&utm_medium=referral&utm_content=creditCopyText">Unsplash</a>
  