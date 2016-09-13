User.destroy_all
Listing.destroy_all

USERS = [
  {
    first_name: "Nathan",
    last_name: "Allen",
    email: "NathanAllen@WDI30.com",
    password_digest: "$2a$10$ZOznVN9PnbO2eww2ARycPu.P4nFJ092edGENVpofzmM6ISZrzzGM.",
    profile_photo: "https://ucarecdn.com/f7788e6a-f781-4b88-9411-89e011d8d9c7/-/resize/500x500/"
  },
  {
    first_name: "Justin",
    last_name: "Castilla",
    email: "JustinCastilla@WDI30.com",
    password: "test",
    profile_photo: "https://ucarecdn.com/2b8907f3-11f1-4779-9902-42832dce80ca/-/crop/408x408/133,0/-/resize/500x500/"
  },
  {
    first_name: "Ben",
    last_name: "Manning",
    email: "BenManning@WDI30.com",
    password: "test",
    profile_photo: "https://ucarecdn.com/0519fade-59f0-4946-9bcd-24ee0bb46ca9/-/crop/433x433/0,81/-/resize/500x500/"
  },
  {
    first_name: "Melissa",
    last_name: "Carlson",
    email: "MelissaCarlson@WDI30.com",
    password: "test",
    profile_photo: "https://ucarecdn.com/bf9db78c-5184-47ef-b522-50cc537efcfd/"
  }
]

LISTINGS = [
  {
    title: "Welcome to GA!",
    content: "This place is awesome! Really comfy pods and couches in the main area to sleep on.",
    image: "https://ucarecdn.com/888201b7-9f1d-4fdb-aae1-be096901cbc4/",
    user_id: 1
  },
  {
    title: "Welcome to GA!",
    content: "This place is awesome! Really comfy pods and couches in the main area to sleep on.",
    image: "https://ucarecdn.com/888201b7-9f1d-4fdb-aae1-be096901cbc4/",
    user_id: 1
  },
  {
    title: "Welcome to GA!",
    content: "This place is awesome! Really comfy pods and couches in the main area to sleep on.",
    image: "https://ucarecdn.com/888201b7-9f1d-4fdb-aae1-be096901cbc4/",
    user_id: 1
  },
  {
    title: "Welcome to GA!",
    content: "This place is awesome! Really comfy pods and couches in the main area to sleep on.",
    image: "https://ucarecdn.com/888201b7-9f1d-4fdb-aae1-be096901cbc4/",
    user_id: 1
  },
  {
    title: "Welcome to GA!",
    content: "This place is awesome! Really comfy pods and couches in the main area to sleep on.",
    image: "https://ucarecdn.com/888201b7-9f1d-4fdb-aae1-be096901cbc4/",
    user_id: 1
  },
  {
    title: "Welcome to GA!",
    content: "This place is awesome! Really comfy pods and couches in the main area to sleep on.",
    image: "https://ucarecdn.com/888201b7-9f1d-4fdb-aae1-be096901cbc4/",
    user_id: 1
  },
]

User.create(USERS)
Listing.create(LISTINGS)
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
