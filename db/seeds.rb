puts 'Destroy everything...'
FlatPhoto.destroy_all
Contract.destroy_all
Transaction.destroy_all
TransactionCategory.destroy_all
Task.destroy_all
TaskCategory.destroy_all
Flat.destroy_all
User.destroy_all
Company.destroy_all

# Original Seeds
# puts 'Creating company...'
# Company.create!( name: 'Immostar')
# puts 'Creating user...'
# User.create!( name: "Frank Goldberg", email: "Frank@gmail.com", password: "123456", company: Company.first )
# puts 'Creating flat...'
# Flat.create!( address: "Rudi-Dutschke-Strasse 26, 10969 Berlin", area: 85, rooms: 3, parking_space: 2, monthly_rent: 800, company: Company.first )
# puts 'Creating task category...'
# TaskCategory.create!( name: "Maintenance" )
# puts 'Creating task...'
# Task.create!( category: TaskCategory.first, title: "Send Plumber", description: "Appointment needs to be coordinated with tenant", company: Company.first, flat: Flat.first )
# puts 'Creating transaction category...'
# TransactionCategory.create!( name: "Inventory" )
# puts 'Creating transaction...'
# Transaction.create!( flat: Flat.first, amount: 1250, date: Date.today, category: TransactionCategory.first, description: "Firefighter operation", is_expense: true, company: Company.first )
# puts 'Creating contract...'
# Contract.create!( flat: Flat.first, start_date: Date.today - 10, end_date: Date.today + 11, monthly_rent: 800 )
# puts 'Creating 5 flat photos...'
# pic1 = FlatPhoto.create!( flat: Flat.first, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563270687/flattrack/Rudi2_qfdzxv.jpg" )
# pic2 = FlatPhoto.create!( flat: Flat.first, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563270687/flattrack/Rudi3_jjbrvm.jpg" )
# pic3 = FlatPhoto.create!( flat: Flat.first, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563270687/flattrack/Rudi4_pv12ye.jpg" )
# pic4 = FlatPhoto.create!( flat: Flat.first, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563270687/flattrack/Rudi5_itk8ae.jpg" )
# pic5 = FlatPhoto.create!( flat: Flat.first, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563270685/flattrack/Rudi1_rolnk1.jpg" )

# Fancy Seed Company
puts 'Creating company...'
company1 = Company.create!( name: 'Wayne Enterprises')
company1.save

# Fancy Seed User
puts 'Creating users...'
u1 = User.create!( name: "Bruce Wayne", email: "bruce@wayne.com", password: "123456", company: company1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563375046/flattrack/user_photos/user_photo_bruce_wayne_sotz0m.jpg")
u2 = User.create!( name: "Tony Stark", email: "tony@stark.com", password: "123456", company: company1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563375132/flattrack/user_photos/user_photo_tony_stark_rolgho.jpg")
u3 = User.create!( name: "Peter Parker", email: "peter@parker.com", password: "123456", company: company1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563375196/flattrack/user_photos/user_photo_peter_parker_xy8gq6.jpg")
u4 = User.create!( name: "Steve Rogers", email: "steve@rogers.com", password: "123456", company: company1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563375379/flattrack/user_photos/user_photo_steve_rogers_fjkl89.jpg")

# Fancy Seed Flat
# 1 Friends: Monica's flat
puts 'Creating flat...'
f1 = Flat.create!( address: "Stresemannstraße 123, 10117 Berlin", area: 140, rooms: 4, parking_space: 0, company: company1, monthly_rent: 2000, comment: "many house parties, problems with neighbors in the past", address_specification: "apartment 19, 4th floor" )
image1 = FlatPhoto.create!( flat: f1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563359558/flattrack/f1_friends_livingroom_ewzure.png" )
image2 = FlatPhoto.create!( flat: f1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563359558/flattrack/f1_friends_livingroom_digox5.jpg" )
image3 = FlatPhoto.create!( flat: f1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563359557/flattrack/f1_friends_kitchen_hpf0um.jpg" )
image4 = FlatPhoto.create!( flat: f1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563359557/flattrack/f1_friends_floorplan_fvfymm.jpg" )

# 2 How I met your mother: Ted and Marshall's flat
puts 'Creating flat...'
image5 = FlatPhoto.create!( flat: f2, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563377238/flattrack/f2_himym_livingroom_empty_rngnmy.jpg" )
image6 = FlatPhoto.create!( flat: f2, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563377238/flattrack/f2_himym_livingroom_hs7zvn.jpg" )
image7 = FlatPhoto.create!( flat: f2, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563377238/flattrack/f2_himym_floorplan_lmh2cx.jpg" )image5 = FlatPhoto.create!( flat: f2, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563377238/flattrack/f2_himym_livingroom_empty_rngnmy.jpg" )
image6 = FlatPhoto.create!( flat: f2, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563377238/flattrack/f2_himym_livingroom_hs7zvn.jpg" )
image7 = FlatPhoto.create!( flat: f2, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563377238/flattrack/f2_himym_floorplan_lmh2cx.jpg" )

# 3 Sex and the City: Carrie's flat
puts 'Creating flat...'
f3 = Flat.create!( address: "Friedrichstraße 206, 10969 Berlin", area: 50, rooms: 1, parking_space: 0, company: company1, monthly_rent: 800, comment: "Stores shoes in the oven")
image8 = FlatPhoto.create!( flat: f3, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563377984/flattrack/f3_satc_bedroom_stkhao.jpg" )
image9 = FlatPhoto.create!( flat: f3, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563377984/flattrack/f3_satc_entrance_a9ous4.jpg" )
image10 = FlatPhoto.create!( flat: f3, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563377983/flattrack/f3_satc_hallway_liu9bh.jpg" )
image11 = FlatPhoto.create!( flat: f3, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563377983/flattrack/f3_satc_livingroom_x2nphc.jpg" )
image12 = FlatPhoto.create!( flat: f3, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563377983/flattrack/f3_satc_floorplan_sq0nph.jpg" )

# 4 How I met your mother: Barney's flat
puts 'Creating flat...'
f4 = Flat.create!( address: "Rudi-Dutschke-Straße 19-17, 10969 Berlin", area: 80, rooms: 2, parking_space: 2, company: company1, monthly_rent: 1200, comment: "Bro Special Edition, including Storm Trooper", address_specification: "" )
image13 = FlatPhoto.create!( flat: f4, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563379087/flattrack/f4_himym_livingroom_close_oqrr2n.jpg" )
image14 = FlatPhoto.create!( flat: f4, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563379087/flattrack/f4_himym_livingroom_so2jyv.jpg" )
image15 = FlatPhoto.create!( flat: f4, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563379087/flattrack/f4_himym_bedroom_vib9wq.jpg" )


# 5 New Girl: Nick, Jess, Schmidt and Winston's flat
puts 'Creating flat...'
f5 = Flat.create!( address: "Friedrichstraße 48-49, 10117 Berlin", area: 1500, rooms: 5, parking_space: 2, company: company1, monthly_rent: 2600 )
image16 = FlatPhoto.create!( flat: f5, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563379958/flattrack/f5_new_girl_entrance_eiqill.jpg" )
image17 = FlatPhoto.create!( flat: f5, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563379958/flattrack/f5_new_girl_lingingroom_angle_jd0cfy.jpg" )
image18 = FlatPhoto.create!( flat: f5, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563379957/flattrack/f5_new_girl_livingroom_cpjqto.jpg" )
image19 = FlatPhoto.create!( flat: f5, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563379957/flattrack/f5_new_girl_bedroom_zzimjy.jpg" )
image20 = FlatPhoto.create!( flat: f5, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563379957/flattrack/f5_newgirl_floorplan_gsk1aq.jpg" )
# 6 Gossip Girl: The Humphrey's loft
puts 'Creating flat...'
f6 = Flat.create!( address: "Charlottenstraße 77-80, 10117 Berlin", area: 120, rooms: 4, parking_space: 1, company: company1, monthly_rent: 1300, comment: "Brooklyn Artsy Chic", address_specification: "" )
image21 = FlatPhoto.create!( flat: f6, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563381855/flattrack/f6_gg_entrance_dmawly.jpg" )
image22 = FlatPhoto.create!( flat: f6, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563381855/flattrack/f6_gg_hallway_qeb9ku.jpg" )
image23 = FlatPhoto.create!( flat: f6, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563381855/flattrack/f6_gg_dining_room_wso8vi.jpg" )
image24 = FlatPhoto.create!( flat: f6, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563381855/flattrack/f6_gg_floorplan_ccycpu.jpg" )


# 7 Gossip Girl: The VanderWoodsen's flat
puts 'Creating flat...'
f7 = Flat.create!( address: "Bethlehemkirchplatz 3, 10117 Berlin", area: 130, rooms: 3, parking_space: 2, company: company1, monthly_rent: 2700 )
image25 = FlatPhoto.create!( flat: f7, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563382707/flattrack/f7_gg_livingroom2_kndbhl.jpg" )
image26 = FlatPhoto.create!( flat: f7, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563382707/flattrack/flat7_gg_bedroom_nsxc9b.jpg" )
image27 = FlatPhoto.create!( flat: f7, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563382706/flattrack/f7_gg_diningroom_doxfq3.jpg" )
image28 = FlatPhoto.create!( flat: f7, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563382707/flattrack/f7_gg_livingroom_zrwdiu.jpg" )

# 8 Gossip Girl: The Waldorf's flat
puts 'Creating flat...'
f8 = Flat.create!( address: "Wilhelmstraße 114-117, 10963 Berlin ", area: 125, rooms: 3, parking_space: 3, company: company1, monthly_rent: 2700, comment: "French Deluxe", address_specification: "Penthouse" )
image29 = FlatPhoto.create!( flat: f8, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563439983/flattrack/f8_gg_staircase_yrbp2j.jpg" )
image30 = FlatPhoto.create!( flat: f8, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563439983/flattrack/f8_gg_bedroom_sxchw0.jpg" )
image31 = FlatPhoto.create!( flat: f8, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563439983/flattrack/f8_gg_livingroom_lqrmps.jpg" )
image32 = FlatPhoto.create!( flat: f8, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563439983/flattrack/f8_gg_diningroom_l163e9.jpg" )

# 9 The Big Bang Theory: Sheldon and Leonard's flat
puts 'Creating flat...'
f9 = Flat.create!( address: "Ritterstraße 61-65, 10969 Berlin ", area: 90, rooms: 3, parking_space: 1, company: company1, monthly_rent: 850, comment: "Geek Package" )
image33 = FlatPhoto.create!( flat: f9, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563440658/flattrack/f9_bbt_livingroom_zenai8.jpg" )
image34 = FlatPhoto.create!( flat: f9, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563440658/flattrack/f9_bbt_floorplan_o1xhjc.jpg" )
image35 = FlatPhoto.create!( flat: f9, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563440658/flattrack/f9_bbt_floorplan_3d_ukopxo.jpg" )
image36 = FlatPhoto.create!( flat: f9, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563440658/flattrack/f9_bbt__pdpspg.jpg" )
image37 = FlatPhoto.create!( flat: f9, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563440658/flattrack/sub-buzz-4238-1561396536-1_q73fex.jpg" )

# 10 Sherlock: Sherlock and John's flat 221B Baker Street
puts 'Creating flat...'
f10 = Flat.create!( address: "Niederkirchnerstraße 7, 10963 Berlin", area: 70, rooms: 2, parking_space: 1, company: company1, monthly_rent: 800, comment: "English shabby chic", address_specification: "alternative address 221B Bakerstreet" )
image38 = FlatPhoto.create!( flat: f10, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563442172/flattrack/f10_sherlock_entrance_hq6yyl.jpg" )
image39 = FlatPhoto.create!( flat: f10, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563442172/flattrack/f10_sherlock_livingroom2_dpyicf.jpg" )
image40 = FlatPhoto.create!( flat: f10, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563442172/flattrack/f10_sherlock_staircase_dwipyg.jpg" )
image41 = FlatPhoto.create!( flat: f10, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563442172/flattrack/f10_sherlock_livingroom_coz0wd.jpg" )


# 11 Two Broke Girls: Max and Caroline's flat
puts 'Creating flat...'
f11 = Flat.create!( address: "Wilhelmstraße 102, 10963 Berlin", area: 70, rooms: 3, parking_space: 0, company: company1, monthly_rent: 750, comment: "" )
image42 = FlatPhoto.create!( flat: f11, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563442438/flattrack/f11_tbg_livingroom_e0bxcl.png" )
image43 = FlatPhoto.create!( flat: f11, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563442438/flattrack/f11_tbg_kitchen_gf12p9.png" )
image44 = FlatPhoto.create!( flat: f11, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563442438/flattrack/f11_tbg_bedroom_j1woqf.jpg" )
image45 = FlatPhoto.create!( flat: f11, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563442438/flattrack/f11_2bg_floorplan_ddom1u.png" )

# 12 Friends: Chandler and Joey's flat
puts 'Creating flat...'
f12 = Flat.create!( address: "Axel-Springer-Straße 58, 10117 Berlin", area: 95, rooms: 3, parking_space: 0, company: company1, monthly_rent: 1650 )
image46 = FlatPhoto.create!( flat: f12, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563442884/flattrack/f12_friends_livingroom_wtbyty.jpg" )
image47 = FlatPhoto.create!( flat: f12, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563442884/flattrack/f12_friends_kitchen_nfaale.jpg" )
image48 = FlatPhoto.create!( flat: f12, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563442884/flattrack/f12_friends_livingroom2_atqki7.jpg" )
image49 = FlatPhoto.create!( flat: f12, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563442884/flattrack/f12_friends_livingroom3_efnd97.jpg" )
image50 = FlatPhoto.create!( flat: f12, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563442884/flattrack/f1_friends_floorplan_yz7wfj.jpg" )

# 13 Breakfast at Tiffany’s: Holly Golightly’s Apartment
puts 'Creating flat...'
f13 = Flat.create!( address: "Leipziger Str. 3-4, 10117 Berlin", area: 45, rooms: 1, parking_space: 1, company: company1, monthly_rent: 770, comment: "Classy 60's" )
image51 = FlatPhoto.create!( flat: f13, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563443434/flattrack/f13_breakfast_livingroom_x4kqqq.jpg" )
image52 = FlatPhoto.create!( flat: f13, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563443434/flattrack/f13_breakfast_entrance_sbajsl.jpg" )
image53 = FlatPhoto.create!( flat: f13, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563443434/flattrack/f13_breakfast_floorplan_uhw0i6.jpg" )


# 14 Mad Man: Don Draper's flat
puts 'Creating flat...'
f14 = Flat.create!( address: "Schützenstraße 51, 10117 Berlin", area: 150, rooms: 3, parking_space: 1, company: company1, monthly_rent: 2775, comment: "60's Deluxe" )
image54 = FlatPhoto.create!( flat: f14, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563443755/flattrack/f14_mad_man_livingroom_oko2by.jpg" )
image55 = FlatPhoto.create!( flat: f14, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563443754/flattrack/f14_mad_man_hallway_ifzfa3.jpg" )
image56 = FlatPhoto.create!( flat: f14, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563443754/flattrack/f14_mad_man_diningroom_kogurw.jpg" )
image57 = FlatPhoto.create!( flat: f14, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563443755/flattrack/f14_mad_men_floorplan_wb5sww.jpg" )

# Fancy Seed Category
#1 General
puts 'Creating task category...'
#maintenance = TaskCategory.create!( name: "Maintenance" )
general = TaskCategory.create!( name: "General" )

#Fancy Seed Task
#1
puts 'Creating task...'
Task.create!( category: general, title: "Pipe Burst", description: "Send plumber, appointment needs to be coordinated with tenant", company: company1, flat: f1, status: "open", urgency: 3 )
#2
puts 'Creating task...'
Task.create!( category: general, title: "Replace Sofa", description: "Check necessity, coordinate appointment with tenat ", company: company1, flat: f1, status: "resolved", urgency: 1 )
#3
puts 'Creating task...'
Task.create!( category: general, title: "Crack in Bathroom tile", description: "Check necessity, coordinate appointment with tenat", company: company1, flat: f1, status: "open", urgency: 1 )
#4
puts 'Creating task...'
Task.create!( category: general, title: "Monkey Poop on the carpet in livingroom", description: "Send cleaning crew, coordinate appointment with tenant", company: company1, flat: f1, status: "in progress", urgency: 2 )
#5
puts 'Creating task...'
Task.create!( category: general, title: "Skirting bord lose, Bedroom 1", description: "Send craftsman, coordinate appointment wit tenant", company: company1, flat: f1, status: "resolved", urgency: 2 )

puts 'Creating task...'
Task.create!( category: general, title: "Elevator out of order", description: "Send craftsman", company: company1, flat: f9, status: "open", urgency: 2 )

# Fancy Seed Contract
puts 'Creating contract...'
contract1 = Contract.create!( flat: f1, start_date: Date.today - 10, end_date: Date.today + 11, monthly_rent: 800 )


# Fancy Seed Transaction Category
#1
puts 'Creating transaction categories...'
furniture = TransactionCategory.create!( name: "furniture cost" )
onetime = TransactionCategory.create!( name: "onetime expenses" )
utilities = TransactionCategory.create!( name: "utilities" )
rent = TransactionCategory.create!( name: "rent" )

# Fancy Seed Transaction
#1
puts 'Creating transactions...'
Transaction.create!( flat: f1, amount: 1250, date: Date.today, category: onetime, description: "Extraordinary Chimney Sweep", is_expense: true, company: company1 )
Transaction.create!( flat: f1, amount: 100, date: Date.today, category: furniture, description: "Kettle", is_expense: true, company: company1 )
Transaction.create!( flat: f1, amount: 100, date: Date.today, category: utilities, description: "flat 1, July 2019", is_expense: true, company: company1 )
Transaction.create!( flat: f1, amount: 800, date: Date.today, category: rent, description: "flat 1, July 2019", is_expense: false, company: company1 )
Transaction.create!( flat: f1, amount: 800, date: Date.today, category: rent, description: "flat 1, August 2019", is_expense: false, company: company1 )

# Fancy Seed Contract
puts 'Creating contract...'
Contract.create!( flat: f1, start_date: Date.today - 10, end_date: Date.today + 90, monthly_rent: 800 )



