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
    location: "General Assembly 225 Bush Street",
    user_id: 1
  },
  {
    title: "Modern red couches",
    content: "Very red very comfortable couches.",
    image: "https://ucarecdn.com/f276e51c-4244-4929-a14e-ce042a9f433a/",
    location: "1234 Red Street",
    user_id: 2
  },
  {
    title: "Simple and Clean",
    content: "Modern grey sofas are here to relax anyone.",
    image: "https://ucarecdn.com/de60390c-3ea0-4f8c-bb0a-183f72f56ba2/",
    location: "330 Grey Court",
    user_id: 3
  },
  {
    title: "Similar to the grey and just as comfortable",
    content: "Looks quite familiar.",
    image: "https://ucarecdn.com/a917eeb1-78d4-4244-a394-e6096534d58d/",
    location: "444 Another Grey Street",
    user_id: 4
  },
  {
    title: "Feng Shui",
    content: "Can you feel the calmness in this place?",
    image: "https://ucarecdn.com/dc106fb9-3308-49ee-8e85-60a88be98fb9/",
    location: "999 Harmony Ave",
    user_id: 1
  },
  {
    title: "The Big U",
    content: "Gotta sleep on this horseshoe.",
    image: "https://ucarecdn.com/c2cc44d3-95ef-4bdf-b465-4ed846e9440a/",
    location: "55 Ranch Road",
    user_id: 2
  },
  {
    title: "Wood Planks",
    content: "Almost reminds me of a sauna.",
    image: "https://ucarecdn.com/95c7faba-6e61-42a0-b49f-7d6b7d7004e6/",
    location: "987 Steam Blvd",
    user_id: 3
  },
  {
    title: "Tube TV",
    content: "Feels like being back home.",
    image: "https://ucarecdn.com/4229794a-046f-485b-998c-0a0171d213de/",
    location: "567 Memory Lane",
    user_id: 4
  },
  {
    title: "Really Modern",
    content: "Hopefully the red walls are soothing for some folks.",
    image: "https://ucarecdn.com/019ea130-a567-480f-87eb-76adac22e647/",
    location: "415 Lottared Blvd",
    user_id: 1
  }
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
