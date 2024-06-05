
Role.create(name: 'guest')
Role.create(name: 'admin')
Role.create(name: 'super_admin')

Hotel.create(name: "Diamond Hotel", location: "Mumbai")

admin = User.create(username: 'Admin', email: 'admin@email.com', password: '123456', role_id: 2)

RoomType.create(name: 'Classic', hotel_id: 1)
RoomType.create(name: 'Regular', hotel_id: 1)
RoomType.create(name: 'Deluxe', hotel_id: 1)

RoomType.create(name: 'Classic', hotel_id: 2)
RoomType.create(name: 'Regular', hotel_id: 2)
RoomType.create(name: 'Deluxe', hotel_id: 2)

RoomType.create(name: 'Classic', hotel_id: 3)
RoomType.create(name: 'Regular', hotel_id: 3)
RoomType.create(name: 'Deluxe', hotel_id: 3)

# accomodations necessary when creating a new room
%w(internet garden transportation breakfast dinner lunch).each { |name| Accomodation.create(name:) }

# create admin user
admin = User.create(username: 'poonam', email: 'poonam@email', password: 'pwd@123', role_id: 2)

# create guest user
guest = User.create(username: 'disha', email: 'disha@email.com', password: '123456', role_id: 1)

# create rooms
room_single = Room.create(
  name: 'RMGT-05',
  number_of_beds: 1,
  price: 129.75,
  room_type_id: 13,
  user: admin,
  description: 'A high class room with a wonderful view and access to the roof'
)
room_single.accomodations.push(*Accomodation.all)
#
## for couple
room_couple = Room.create(
  name: 'RMGT-02',
  number_of_beds: 2,
  price: 179,
  room_type_id: 13,
  user: admin,
  description: 'A high class room with a wonderful view and access to the roof'
)
room_couple.accomodations.push(*Accomodation.first(3))