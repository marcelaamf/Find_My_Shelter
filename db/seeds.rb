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


cat1 = Category.find_or_create_by! name: 'Emergency'
cat2 = Category.find_or_create_by! name: 'Domestic Violence'
cat3 = Category.find_or_create_by! name: 'Drug Abuse'

## PRODUCTS

puts "Re-creating Products ..."



cat1.shelters.create!({
  name:  "The Mustard Seed",
  website: "https://theseed.ca/",
  women_capacity: 25,
  current_women: 6,
  men_capacity: 30,
  current_men: 4,
  children_capacity: 15,
  current_children: 10,
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
  image: open_asset('mustardseed.jpg'),
  description:"The Mustard Seed is a Christian non-profit organization that has been caring for individuals experiencing homelessness and poverty since 1984.\nOperating in five cities across Alberta and British Columbia, The Mustard Seed is a supportive haven where people can have their physical, mental, and spiritual needs met and grow toward greater health and independence.",
})

cat1.shelters.create!({
  name:  "Alpha House",
  website: "https://alphahousecalgary.com/",
  women_capacity: 15,
  current_women: 5,
  men_capacity: 25,
  current_men: 10,
  children_capacity: 0,
  current_children: 0,
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
  image: open_asset('alphahouse.jpg'),
  description:"Alpha House Society is a non-profit, charitable agency providing safe and caring environments for individuals whose lives are affected by alcohol and other substance dependencies.\nCalgary Alpha House Society was established in 1981 as a committed response to a marginalized population of men and women who are addicted to alcohol or other drugs and living vulnerable on the streets of Calgary.",
})

cat2.shelters.create!({
  name:  "Calgary Women's Emergency Shelter",
  website: "https://www.calgarywomensshelter.com/",
  women_capacity: 30,
  current_women: 8,
  men_capacity: 0,
  current_men: 0,
  children_capacity: 30,
  current_children: 12,
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
  image: open_asset('womensshelter.jpg'),
  description:"The Calgary Women’s Emergency Shelter is focused on ending family violence and abuse in the lives of women, children, and youth.
  \nTaking a Stand Against Family Violence in the community since 1974, the agency has helped over 260,000 Calgarians build safe lives and healthy relationships.
  \nWe are on the front lines to provide hope and support to some of the most vulnerable members of our community. 
  \nThough the Emergency Shelter is the cornerstone of the organization, it is “More than a Shelter”, serving approximately 15,000 clients each year through a number of innovative safety, healing and prevention programs.",
})

cat3.shelters.create!({
  name:  "Calgary Dream centre",
  website: "https://calgarydreamcentre.com/",
  women_capacity: 20,
  current_women: 11,
  men_capacity: 35,
  current_men: 22,
  children_capacity: 0,
  current_children: 0,
  accept_man: true,
  accept_woman: true,
  youth_only: false,
  accept_kids: false,
  counselling_service: true,
  clothing: true,
  restroom_service: true,
  cafeteria: true,
  address: "4510 Macleod Trail South, Calgary, AB T2G 0A4",
  phone: "(403) 243-5598",
  email:"info@calgarydreamcentre.com",
  image: open_asset('calgary_dream_centre.png'),
  description:"The Calgary Dream Centre is a faith-based recovery organization that is, fittingly enough, built on a dream. We dream that someday, the city of Calgary will not need us anymore. While that idea is still a ways away, we do believe that our passion for our mission and our strong set of core values have paved the way to make a very real, transformative impact in the lives of hundreds of Calgarians.",
})


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
  