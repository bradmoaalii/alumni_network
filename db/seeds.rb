30.times do |user|
    user = User.create(
            email: Faker::Internet.email,
            password: "password",
            password_confirmation: "password",
            approved: true,
            roles: "user"
    )

    Profile.create(
        users_id: user.id, 
        img: "http://via.placeholder.com/150x150",
        name: Faker::StarWars.character,
        about: Faker::StarWars.quote,
        phone: Faker::PhoneNumber.phone_number,
        email: Faker::Internet.email,
        location: Faker::StarWars.planet,
        relocation: Faker::Boolean.boolean,
        skills: Faker::MostInterestingManInTheWorld.quote
    )

    puts "1 profile created"
end

5.times do |admin|
    user = User.create(
            email: "admin#{admin+1}@test.com",
            password: "password",
            password_confirmation: "password",
            approved: true,
            roles: "admin"
    )

    Profile.create(
        users_id: user.id, 
        img: "http://via.placeholder.com/150x150",
        name: Faker::StarWars.character,
        about: Faker::StarWars.quote,
        phone: Faker::PhoneNumber.phone_number,
        email: "admin#{admin+1}@test.com",
        location: Faker::StarWars.planet,
        relocation: Faker::Boolean.boolean,
        skills: Faker::MostInterestingManInTheWorld.quote
    )

    puts "1 admin profile created"
end