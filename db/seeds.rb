puts 'Destroy everything...'
Inventory.destroy_all
InventoryCategory.destroy_all
FlatPhoto.destroy_all
Contract.destroy_all
Transaction.destroy_all
TransactionCategory.destroy_all
Task.destroy_all
TaskCategory.destroy_all
Flat.destroy_all
User.destroy_all
Company.destroy_all


# Fancy Seed Company
puts 'Creating company...'
company1 = Company.create!( name: 'Wayne Enterprises')
company1.save

# Fancy Seed User
puts 'Creating users...'
u1 = User.create!( name: "Christina Gudat", email: "christina@gudat.com", password: "123456", company: company1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563533337/flattrack/user_photos/user_christina_gudat_cx8ndp.jpg")
u2 = User.create!( name: "Christoph Busse", email: "christoph@busse.com", password: "123456", company: company1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563533412/flattrack/user_photos/Busse_gro%C3%9F_twetuw.jpg")
u3 = User.create!( name: "Chris Hägner", email: "chris@haegner.com", password: "123456", company: company1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563533337/flattrack/user_photos/user_chis_h%C3%A4gner_ocfdcu.jpg")
u4 = User.create!( name: "Nicolas Eberhardt", email: "nicolas@eberhardt.com", password: "123456", company: company1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563533337/flattrack/user_photos/user_nicolas_erberhardt_k2tode.jpg")

# Fancy Seed Flat
# 1 Friends: Monica's flat
puts 'Creating flat...'
f1 = Flat.create!( address: "Stresemannstraße 123, 10117 Berlin", area: 120, rooms: 3, parking_space: 0, company: company1, monthly_rent: 1750, comment: "Flat share for two young professionals, 90's interior concept, blue accent walls and generous living room and big balcony.", address_specification: "3rd floor on the right side")
image1 = FlatPhoto.create!( flat: f1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563359558/flattrack/f1_friends_livingroom_ewzure.png" )
image2 = FlatPhoto.create!( flat: f1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563359558/flattrack/f1_friends_livingroom_digox5.jpg" )
image3 = FlatPhoto.create!( flat: f1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563359557/flattrack/f1_friends_kitchen_hpf0um.jpg" )
image4 = FlatPhoto.create!( flat: f1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563359557/flattrack/f1_friends_floorplan_fvfymm.jpg" )

# 2 How I met your mother: Ted and Marshall's flat
puts 'Creating flat...'
f2 = Flat.create!( address: "Stresemannstraße 120, 10117 Berlin", area: 140, rooms: 4, parking_space: 0, company: company1, monthly_rent: 2000, comment: "Flat share for two young professionals, 2000's interior concept, open fire place, not barrier-free.", address_specification: "apartment 19, 4th floor" )
image5 = FlatPhoto.create!( flat: f2, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563377238/flattrack/f2_himym_livingroom_empty_rngnmy.jpg" )
image6 = FlatPhoto.create!( flat: f2, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563377238/flattrack/f2_himym_livingroom_hs7zvn.jpg" )
image7 = FlatPhoto.create!( flat: f2, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563377238/flattrack/f2_himym_floorplan_lmh2cx.jpg" )
image6 = FlatPhoto.create!( flat: f2, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563377238/flattrack/f2_himym_livingroom_hs7zvn.jpg" )
image7 = FlatPhoto.create!( flat: f2, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563377238/flattrack/f2_himym_floorplan_lmh2cx.jpg" )

# 3 Sex and the City: Carrie's flat
puts 'Creating flat...'
f3 = Flat.create!( address: "Friedrichstraße 206, 10969 Berlin", area: 50, rooms: 1, parking_space: 0, company: company1, monthly_rent: 800, comment: "Single apartment, 90's Manhatten interior design. It's not allowed to pierce the walls. Windows facing the street. Shoe storage in the oven", address_specification: "1st floor, opposite of the elevator")
image8 = FlatPhoto.create!( flat: f3, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563377984/flattrack/f3_satc_bedroom_stkhao.jpg" )
image9 = FlatPhoto.create!( flat: f3, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563377984/flattrack/f3_satc_entrance_a9ous4.jpg" )
image10 = FlatPhoto.create!( flat: f3, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563377983/flattrack/f3_satc_hallway_liu9bh.jpg" )
image11 = FlatPhoto.create!( flat: f3, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563377983/flattrack/f3_satc_livingroom_x2nphc.jpg" )
image12 = FlatPhoto.create!( flat: f3, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563377983/flattrack/f3_satc_floorplan_sq0nph.jpg" )

# 4 How I met your mother: Barney's flat
puts 'Creating flat...'
f4 = Flat.create!( address: "Rudi-Dutschke-Straße 19-17, 10969 Berlin", area: 80, rooms: 2, parking_space: 2, company: company1, monthly_rent: 1200, comment: "Bro Special Edition, including Storm Trooper and walk-in suit wardrobe and two 300-inch plasma-screen TVs from Japan", address_specification: "4th floor, 2nd entrance to the left" )
image13 = FlatPhoto.create!( flat: f4, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563379087/flattrack/f4_himym_livingroom_close_oqrr2n.jpg" )
image14 = FlatPhoto.create!( flat: f4, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563379087/flattrack/f4_himym_livingroom_so2jyv.jpg" )
image15 = FlatPhoto.create!( flat: f4, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563379087/flattrack/f4_himym_bedroom_vib9wq.jpg" )

# 5 New Girl: Nick, Jess, Schmidt and Winston's flat
puts 'Creating flat...'
f5 = Flat.create!( address: "Friedrichstraße 48-49, 10117 Berlin", area: 1500, rooms: 5, parking_space: 2, company: company1, monthly_rent: 2600, comment: "Loft flatshare ideal for 4 young professionals, generous living room, open kitchen, brick stone walls, lots of plants.", address_specification: "4th floor, first entrace to the left, 401" )
image16 = FlatPhoto.create!( flat: f5, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563379958/flattrack/f5_new_girl_entrance_eiqill.jpg" )
image17 = FlatPhoto.create!( flat: f5, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563379958/flattrack/f5_new_girl_lingingroom_angle_jd0cfy.jpg" )
image18 = FlatPhoto.create!( flat: f5, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563379957/flattrack/f5_new_girl_livingroom_cpjqto.jpg" )
image19 = FlatPhoto.create!( flat: f5, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563379957/flattrack/f5_new_girl_bedroom_zzimjy.jpg" )
image20 = FlatPhoto.create!( flat: f5, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563379957/flattrack/f5_newgirl_floorplan_gsk1aq.jpg" )
# 6 Gossip Girl: The Humphrey's loft
puts 'Creating flat...'
f6 = Flat.create!( address: "Charlottenstraße 40, 10117 Berlin", area: 120, rooms: 4, parking_space: 1, company: company1, monthly_rent: 1300, comment: "Brooklyn Artsy Loft, brick stone walls, visible steal beams, fire escape stairs, 3 bedrooms flat share or family home", address_specification: "3rd floor, first entrace to the right of elevator 304" )
image21 = FlatPhoto.create!( flat: f6, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563381855/flattrack/f6_gg_entrance_dmawly.jpg" )
image22 = FlatPhoto.create!( flat: f6, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563381855/flattrack/f6_gg_hallway_qeb9ku.jpg" )
image23 = FlatPhoto.create!( flat: f6, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563381855/flattrack/f6_gg_dining_room_wso8vi.jpg" )
image24 = FlatPhoto.create!( flat: f6, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563381855/flattrack/f6_gg_floorplan_ccycpu.jpg" )


# 7 Gossip Girl: The VanderWoodsen's flat
puts 'Creating flat...'
f7 = Flat.create!( address: "Bethlehemkirchplatz 3, 10117 Berlin", area: 130, rooms: 3, parking_space: 2, company: company1, monthly_rent: 2700, comment: "Representable Manhattan Modern Art Deluxe for sophisticated entertainment, maisonette, light colour concept with red as accent colour", address_specification: "23rd floor, only entrance on the left, 23A" )
image25 = FlatPhoto.create!( flat: f7, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563382707/flattrack/f7_gg_livingroom2_kndbhl.jpg" )
image26 = FlatPhoto.create!( flat: f7, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563382707/flattrack/flat7_gg_bedroom_nsxc9b.jpg" )
image27 = FlatPhoto.create!( flat: f7, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563382706/flattrack/f7_gg_diningroom_doxfq3.jpg" )
image28 = FlatPhoto.create!( flat: f7, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563382707/flattrack/f7_gg_livingroom_zrwdiu.jpg" )

# 8 Gossip Girl: The Waldorf's flat
puts 'Creating flat...'
f8 = Flat.create!( address: "Wilhelmstraße 114-117, 10963 Berlin ", area: 125, rooms: 3, parking_space: 3, company: company1, monthly_rent: 3700, comment: "French Deluxe with representable staircase, sophisticated entertaining is possible, maisonete penthouse, marble columns", address_specification: "Penthouse, only entrance on that floor" )
image29 = FlatPhoto.create!( flat: f8, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563439983/flattrack/f8_gg_staircase_yrbp2j.jpg" )
image30 = FlatPhoto.create!( flat: f8, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563439983/flattrack/f8_gg_bedroom_sxchw0.jpg" )
image31 = FlatPhoto.create!( flat: f8, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563439983/flattrack/f8_gg_livingroom_lqrmps.jpg" )
image32 = FlatPhoto.create!( flat: f8, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563439983/flattrack/f8_gg_diningroom_l163e9.jpg" )

# 9 The Big Bang Theory: Sheldon and Leonard's flat
puts 'Creating flat...'
f9 = Flat.create!( address: "Ritterstraße 61-65, 10969 Berlin ", area: 90, rooms: 3, parking_space: 1, company: company1, monthly_rent: 850, comment: "Ideal for two young professionals, open kitchen, elevator, Geek Package including DNA-statue, photographs of galyxies and nebulae", address_specification: "4th floor, 4B" )
image33 = FlatPhoto.create!( flat: f9, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563440658/flattrack/f9_bbt_livingroom_zenai8.jpg" )
image34 = FlatPhoto.create!( flat: f9, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563440658/flattrack/f9_bbt_floorplan_o1xhjc.jpg" )
image35 = FlatPhoto.create!( flat: f9, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563440658/flattrack/f9_bbt_floorplan_3d_ukopxo.jpg" )
image36 = FlatPhoto.create!( flat: f9, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563440658/flattrack/f9_bbt__pdpspg.jpg" )
image37 = FlatPhoto.create!( flat: f9, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563440658/flattrack/sub-buzz-4238-1561396536-1_q73fex.jpg" )

# 10 Sherlock: Sherlock and John's flat 221B Baker Street
puts 'Creating flat...'
f10 = Flat.create!( address: "Niederkirchnerstraße 7, 10963 Berlin", area: 70, rooms: 2, parking_space: 1, company: company1, monthly_rent: 800, comment: "English shabby chic, for two adults, narrow staircase, cozy (dark), fully equipped tea station, lavish persian rugs", address_specification: "alternative address 221B Bakerstreet" )
image38 = FlatPhoto.create!( flat: f10, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563442172/flattrack/f10_sherlock_entrance_hq6yyl.jpg" )
image39 = FlatPhoto.create!( flat: f10, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563442172/flattrack/f10_sherlock_livingroom2_dpyicf.jpg" )
image40 = FlatPhoto.create!( flat: f10, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563442172/flattrack/f10_sherlock_staircase_dwipyg.jpg" )
image41 = FlatPhoto.create!( flat: f10, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563442172/flattrack/f10_sherlock_livingroom_coz0wd.jpg" )

# 11 Two Broke Girls: Max and Caroline's flat
puts 'Creating flat...'
f11 = Flat.create!( address: "Wilhelmstraße 102, 10963 Berlin", area: 70, rooms: 3, parking_space: 0, company: company1, monthly_rent: 750, comment: "Open concrete beams, shabby chic, colourful concept, ideal for two people", address_specification: "262" )
image42 = FlatPhoto.create!( flat: f11, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563442438/flattrack/f11_tbg_livingroom_e0bxcl.png" )
image43 = FlatPhoto.create!( flat: f11, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563442438/flattrack/f11_tbg_kitchen_gf12p9.png" )
image44 = FlatPhoto.create!( flat: f11, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563442438/flattrack/f11_tbg_bedroom_j1woqf.jpg" )
image45 = FlatPhoto.create!( flat: f11, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563442438/flattrack/f11_2bg_floorplan_ddom1u.png" )

# 12 Friends: Chandler and Joey's flat
puts 'Creating flat...'
f12 = Flat.create!( address: "Axel-Springer-Straße 58, 10117 Berlin", area: 95, rooms: 3, parking_space: 0, company: company1, monthly_rent: 1650, comment: "Target: two young professionals, 90's chic, table soccer, small open kitchen", address_specification: "3rd floor on the left side" )
image46 = FlatPhoto.create!( flat: f12, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563442884/flattrack/f12_friends_livingroom_wtbyty.jpg" )
image47 = FlatPhoto.create!( flat: f12, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563442884/flattrack/f12_friends_kitchen_nfaale.jpg" )
image48 = FlatPhoto.create!( flat: f12, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563442884/flattrack/f12_friends_livingroom2_atqki7.jpg" )
image49 = FlatPhoto.create!( flat: f12, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563442884/flattrack/f12_friends_livingroom3_efnd97.jpg" )
image50 = FlatPhoto.create!( flat: f12, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563442884/flattrack/f1_friends_floorplan_yz7wfj.jpg" )

# 13 Breakfast at Tiffany’s: Holly Golightly’s Apartment
puts 'Creating flat...'
f13 = Flat.create!( address: "Leipziger Str. 3-4, 10117 Berlin", area: 45, rooms: 1, parking_space: 1, company: company1, monthly_rent: 770, comment: "Classy 60's, 1 Person, narrow staircase, no elevator, black stone floor, white walls, pink accents, zebra fur", address_specification: "1st floor, 2nd to the left" )
image51 = FlatPhoto.create!( flat: f13, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563443434/flattrack/f13_breakfast_livingroom_x4kqqq.jpg" )
image52 = FlatPhoto.create!( flat: f13, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563443434/flattrack/f13_breakfast_entrance_sbajsl.jpg" )
image53 = FlatPhoto.create!( flat: f13, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563443434/flattrack/f13_breakfast_floorplan_uhw0i6.jpg" )


# 14 Mad Man: Don Draper's flat
puts 'Creating flat...'
f14 = Flat.create!( address: "Schützenstraße 51, 10117 Berlin", area: 150, rooms: 3, parking_space: 1, company: company1, monthly_rent: 2775, comment: "60's Deluxe, earthy tones, smoking is permitted, big balcony, fully equipped bar", address_specification: "8th floor, 801" )
image54 = FlatPhoto.create!( flat: f14, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563443755/flattrack/f14_mad_man_livingroom_oko2by.jpg" )
image55 = FlatPhoto.create!( flat: f14, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563443754/flattrack/f14_mad_man_hallway_ifzfa3.jpg" )
image56 = FlatPhoto.create!( flat: f14, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563443754/flattrack/f14_mad_man_diningroom_kogurw.jpg" )
image57 = FlatPhoto.create!( flat: f14, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563443755/flattrack/f14_mad_men_floorplan_wb5sww.jpg" )

# Fancy Seed Category
#1 General
puts 'Creating task category...'
#maintenance = TaskCategory.create!( name: "Maintenance" )
general = TaskCategory.create!( name: "General" )
maintenance = TaskCategory.create!( name: "Maintenance" )
restocking = TaskCategory.create!( name: "Restocking" )
furnishing = TaskCategory.create!( name: "Furnishing" )
repair = TaskCategory.create!( name: "Repair" )

#Fancy Seed Task  # add restocking task and more furnishing tasks
#1
puts 'Creating task...'
# t1 = Task.create!( category: repair, title: " Send plumber to fix Pipe Burst", description: "Send plumber, appointment needs to be coordinated with tenant", company: company1, flat: f1, status: "open", urgency: 3, user: u1 )
#2
t1  = Task.create!( category: furnishing, title: "Carpet ruined by Pipe Burst", description: "Send plumber, appointment needs to be coordinated with tenant", company: company1, flat: f7, status: "open", urgency: 2, user: u1 )
puts 'Creating task...'
t2 = Task.create!( category: furnishing, title: "Check necessity to replace Sofa", description: "Check necessity, coordinate appointment with tenant ", company: company1, flat: f1, status: "resolved", urgency: 1, user: u1 )
#3
puts 'Creating task...'
t3 = Task.create!( category: maintenance, title: "Send craftsman to fix crack in bathroom tile", description: "Check necessity, coordinate appointment with tenant", company: company1, flat: f1, status: "open", urgency: 1, user: u3 )
#4
puts 'Creating task...'
t4 = Task.create!( category: general, title: "Send cleaning crew to deal with Monkey Poop on the carpet in living room", description: "Send cleaning crew, coordinate appointment with tenant", company: company1, flat: f1, status: "in progress", urgency: 2, user: u4 )
#5
puts 'Creating task...'
t5 = Task.create!( category: repair, title: "Send craftsman to fix lose skirting bord in bedroom 1", description: "Send craftsman, coordinate appointment with tenant", company: company1, flat: f1, status: "resolved", urgency: 2, user: u1)

puts 'Creating task...'
t6 = Task.create!( category: repair, title: "Elevator out of order, send craftsman", description: "Send craftsman", company: company1, flat: f9, status: "open", urgency: 2, user: u1)

puts 'Creating task...'
t7 = Task.create!( category: general, title: "Blackout - fix ASAP", description: "Look into the matter and fix it.", company: company1, flat: f9, status: "open", urgency: 3, user: u1 )

puts 'Creating task...'
t8 = Task.create!( category: maintenance, title: "Send painter to close bullet holes in living room wall", description: "coordinate painter and tenant", company: company1, flat: f10, status: "open", urgency: 2, user: u1)

puts 'Creating task...'
t9 = Task.create!( category: general, title: "Whiskey stain on the sofa", description: "fix, when opportunity arises", company: company1, flat: f14, status: "open", urgency: 1, user: u1)

puts 'Creating task...'
t10 = Task.create!( category: maintenance, title: "Inquire insurance regarding burn hole in zebra fur", description: "coordinate insurance and tenant", company: company1, flat: f13, status: "in progress", urgency: 2, user: u1 )

# puts 'Creating task...'
# t11 = Task.create!( category: maintenance, title: "Coordinate Chimney Sweep", description: "Coordinate with tenant and chimney sweeper", company: company1, flat: f9, status: "open", urgency: 2, user: u2 )

puts 'Creating task...'
t12 = Task.create!( category: repair, title: "Send care taker to look into broken heating, follow up", description: "send caretaker to inspect, if serious problem, coordinate craftsmen", company: company1, flat: f3, status: "in progress", urgency: 3, user: u1 )

puts 'Creating task...'
t13 = Task.create!( category: maintenance, title: "Educate tenants that high heel marks in parquet floor are to be repaired at their expense", description: "educate tenants, fix at next opportunity", company: company1, flat: f7, status: "in progress", urgency: 1, user: u1 )

puts 'Creating task...'
t14 = Task.create!( category: repair, title: "Send caretaker to fix door bell", description: "send caretaker to fix", company: company1, flat: f3, status: "resolved", urgency: 2, user: u1 )

puts 'Creating task...'
t15 = Task.create!( category: restocking, title: "Replace bath towel", description: "Towel looks iffy", company: company1, flat: f3, status: "resolved", urgency: 2, user: u1 )

t16 = Task.create!( category: repair, title: "Change light bulb", description: "Bring ladder", company: company1, flat: f2, status: "in progress", urgency: 2, user: u1 )
t17 = Task.create!( category: furnishing, title: "Replace mat in bathroom", description: "", company: company1, flat: f2, status: "in progress", urgency: 2, user: u1 )
t18 = Task.create!( category: restocking, title: "Fix Washing Machine", description: "", company: company1, flat: f4, status: "in progress", urgency: 2, user: u1 )

t19 = Task.create!( category: restocking, title: "Change light bulb in living room", description: "Bring ladder", company: company1, flat: f4, status: "in progress", urgency: 2, user: u1 )
t20 = Task.create!( category: restocking, title: "Change light bulb in living room", description: "Bring ladder", company: company1, flat: f5, status: "in progress", urgency: 2, user: u1 )
t21 = Task.create!( category: restocking, title: "Check status of plants", description: "Water/ create task to replace", company: company1, flat: f5, status: "in progress", urgency: 2, user: u1 )

t22 = Task.create!( category: maintenance, title: "Replace mat in bathroom", description: "", company: company1, flat: f6, status: "open", urgency: 2, user: u1 )
t23 = Task.create!( category: repair, title: "Fix door of wardrobe", description: "right door white wardrobe", company: company1, flat: f6, status: "open", urgency: 2, user: u1 )
t24 = Task.create!( category: restocking, title: "Replace white wine glass", description: "", company: company1, flat: f8, status: "open", urgency: 2, user: u1 )

t25 = Task.create!( category: maintenance, title: "Change light bulb in uplight", description: "", company: company1, flat: f8, status: "open", urgency: 2, user: u1 )
t26 = Task.create!( category: maintenance, title: "Check plants", description: "", company: company1, flat: f11, status: "open", urgency: 2, user: u1 )
t27 = Task.create!( category: repair, title: "Fix window in kitchen", description: "", company: company1, flat: f12, status: "open", urgency: 2, user: u1 )

t28 = Task.create!( category: maintenance, title: "Coordinate Chimney Sweep", description: "Deadline in October. Fix appointment with tenants and chimney sweeper.", company: company1, flat: f7, status: "open", urgency: 1, user: u2 )
t29 = Task.create!( category: maintenance, title: "Make appointment with slater", description: "Roof needs to be overhauled next year. What is the scope and possible date?", company: company1, flat: f7, status: "open", urgency:1, user: u3 )
# t30 = Task.create!( category: restocking, title: "", description: "", company: company1, flat: f, status: "open", urgency: 2, user: u1 )

# t31 = Task.create!( category: restocking, title: "", description: "", company: company1, flat: f, status: "open", urgency: 2, user: u1 )
# t32 = Task.create!( category: restocking, title: "", description: "", company: company1, flat: f, status: "open", urgency: 2, user: u1 )
# t33 = Task.create!( category: restocking, title: "", description: "", company: company1, flat: f, status: "open", urgency: 2, user: u1 )

# t34 = Task.create!( category: restocking, title: "", description: "", company: company1, flat: f, status: "open", urgency: 2, user: u1 )
# t35 = Task.create!( category: restocking, title: "", description: "", company: company1, flat: f, status: "open", urgency: 2, user: u1 )
# t36 = Task.create!( category: restocking, title: "", description: "", company: company1, flat: f, status: "open", urgency: 2, user: u1 )

# Fancy Seed Contract
puts 'Creating contract...'
contract1 = Contract.create!( flat: f1, start_date: Date.today - 10, end_date: Date.today + 11, monthly_rent: 800 )

# Fancy Seeds Participations
puts "creating participation"
Participation.create!(user: u1, task: t1)
Participation.create!(user: u1, task: t2)
Participation.create!(user: u3, task: t3)
Participation.create!(user: u4, task: t4)
Participation.create!(user: u1, task: t5)
Participation.create!(user: u1, task: t6)
Participation.create!(user: u1, task: t7)
Participation.create!(user: u1, task: t9)
Participation.create!(user: u1, task: t10)
# Participation.create!(user: u2, task: t11)
Participation.create!(user: u1, task: t12)
Participation.create!(user: u1, task: t13)
Participation.create!(user: u1, task: t14)
Participation.create!(user: u1, task: t15)

Participation.create!(user: u2, task: t1)
Participation.create!(user: u2, task: t2)
Participation.create!(user: u3, task: t5)
Participation.create!(user: u3, task: t6)
Participation.create!(user: u3, task: t7)
Participation.create!(user: u3, task: t8)
Participation.create!(user: u4, task: t9)
Participation.create!(user: u4, task: t10)
Participation.create!(user: u2, task: t12)
Participation.create!(user: u2, task: t13)
Participation.create!(user: u3, task: t14)
Participation.create!(user: u3, task: t15)

Participation.create!(user: u1, task: t16)
Participation.create!(user: u1, task: t17)
Participation.create!(user: u1, task: t18)
Participation.create!(user: u1, task: t19)
Participation.create!(user: u1, task: t20)
Participation.create!(user: u1, task: t21)
Participation.create!(user: u1, task: t22)
Participation.create!(user: u1, task: t23)
Participation.create!(user: u1, task: t24)
Participation.create!(user: u1, task: t25)
Participation.create!(user: u1, task: t26)
Participation.create!(user: u1, task: t27)

Participation.create!(user: u2, task: t16)
Participation.create!(user: u3, task: t17)
Participation.create!(user: u3, task: t18)
Participation.create!(user: u3, task: t19)
Participation.create!(user: u4, task: t20)
Participation.create!(user: u4, task: t21)
Participation.create!(user: u4, task: t22)

# f7 for pitch
Participation.create!(user: u2, task: t28)
Participation.create!(user: u3, task: t29)

puts "participation created"

# Fancy Seed Transaction Category
#1
puts 'Creating transaction categories...'
furniture = TransactionCategory.create!( name: "furniture cost" )
onetime = TransactionCategory.create!( name: "onetime expenses" )
utilities = TransactionCategory.create!( name: "utilities" )
rent = TransactionCategory.create!( name: "rent" )

# Fancy Seed Transaction # add more transactions with different flats and categories
#1
puts 'Creating transactions...'
Transaction.create!( flat: f1, amount_cents: 7000, date: Date.today, category: onetime, description: "Extraordinary Heating Maintenance", is_expense: true, company: company1 )
Transaction.create!( flat: f1, amount_cents: 350, date: Date.today, category: furniture, description: "Kettle", is_expense: true, company: company1 )
Transaction.create!( flat: f1, amount_cents: 5405, date: Date.today, category: utilities, description: "flat 1, July 2019", is_expense: true, company: company1 )
Transaction.create!( flat: f1, amount_cents: 20000, date: Date.today, category: rent, description: "flat 1, July 2019", is_expense: false, company: company1 )
Transaction.create!( flat: f1, amount_cents: 20000, date: Date.today, category: rent, description: "flat 1, August 2019", is_expense: false, company: company1 )

Transaction.create!( flat: f2, amount_cents: 12050, date: Date.today, category: onetime, description: "Adding blue horn to interior", is_expense: true, company: company1 )
Transaction.create!( flat: f3, amount_cents: 1000, date: Date.today, category: furniture, description: "Sidetable", is_expense: true, company: company1 )
Transaction.create!( flat: f10, amount_cents: 1800, date: Date.today, category: utilities, description: "flat 10, July 2019", is_expense: true, company: company1 )
Transaction.create!( flat: f7, amount_cents: 27000, date: Date.today, category: rent, description: "flat 7, July 2019", is_expense: false, company: company1 )
Transaction.create!( flat: f9, amount_cents: 8500, date: Date.today, category: rent, description: "flat 9, August 2019", is_expense: false, company: company1 )


# Fancy Seed Contract
puts 'Creating contract...'
Contract.create!( flat: f1, start_date: Date.today - 10, end_date: Date.today + 90, monthly_rent: 800 )

# Fancy Seed task Comments
Comment.create!( task: t2, user: u1, text: "Check possibilities to remedy the damage, cost effective solution preferabel. Must be done when tenants change.")
Comment.create!( task: t1, user: u1, text: "Emergency fix was done yesterday. Find out, whether further repairs are necessary, what is will cost and by when it can be done.")
Comment.create!( task: t3, user: u1, text: "Must be fixed before new tenant moves in.")
Comment.create!( task: t4, user: u2, text: "Isn't that the tenants problem?.")
Comment.create!( task: t4, user: u1, text: "Make sure you tell the tenants, that they will receive an invoice.")
Comment.create!( task: t5, user: u1, text: "Also, look into why it is lose.")
# Comment.create!( task: t, user: u, text: "")
# Comment.create!( task: t, user: u, text: "")
# Comment.create!( task: t, user: u, text: "")
# Comment.create!( task: t, user: u, text: "")

# # Fancy Seeds Inventory Caregories
puts "creating inventory_categories"
bedroom = InventoryCategory.create!(name: "Bedroom")
kitchen = InventoryCategory.create!(name: "Kitchen")
livingroom = InventoryCategory.create!(name: "Living Room")
bathroom = InventoryCategory.create!(name:"Bathroom")

# Fancy Seeds Inventory
puts "creating inventories"
Inventory.create!(category: kitchen, name: "TEFAL FV 4680 E3", historic_value: 33.99, book_value: 22.66, description: "flat iron", condition: "used", flat: f1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876118/flattrack/inventory_photos/flatiron_iil8x4.jpg", replaced: false, deleted: false)
Inventory.create!(category: bathroom, name: "PHILIPS HP8230/00 Haartrockner Schwarz (2100 Watt)", historic_value: 17.99, book_value: 11.99, description: "hair dryer", condition: "used", flat: f1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876118/flattrack/inventory_photos/hairdryer_zpwt6n.png", replaced: false, deleted: false)
Inventory.create!(category: kitchen, name: "PHILIPS SENSEO® HD 6556/00", historic_value: 77.99, book_value: 77.99 , description: "Coffee Maker", condition: "new", flat: f1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876116/flattrack/inventory_photos/coffeemaker_exa9kf.jpg", replaced: true, deleted: false)
Inventory.create!(category: bathroom, name: "VILEDA 09470 VIVA EXPRESS ECO BLAU Bügelbrett", historic_value: 39.99, book_value: 29.99 , description: "Ironing Board", condition: "used", flat: f1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876119/flattrack/inventory_photos/ironboard_jbgwfu.jpg", replaced: false, deleted: false)
Inventory.create!(category: bedroom, name: "SONGESAND", historic_value: 179.00, book_value: 119.00 , description: "white wardrobe", condition: "scratces at the feet from vacuum cleaning", flat: f1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876118/flattrack/inventory_photos/songesand.JPG_edvevm.jpg", replaced: false, deleted: false)
Inventory.create!(category: livingroom, name: "NOT", historic_value: 13.99, book_value: 13.99 , description: "uplight", condition: "new", flat: f1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876118/flattrack/inventory_photos/NOTlight_llskxh.jpg", replaced: true, deleted: false)
Inventory.create!(category: bathroom, name: "VÅGSJÖN", historic_value: 6.99, book_value: 0.00, description: "bath Towel", condition: "replace", flat: f1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876117/flattrack/inventory_photos/bathtowels_bdiyzu.jpg", replaced: false, deleted: false)
Inventory.create!(category: bedroom, name: "DVALA", historic_value: 24.99, book_value: 24.99 , description: "bedclothes, 3 pieces", condition: "new", flat: f1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876118/flattrack/inventory_photos/bedclothes_m2dzvx.jpg", replaced: true, deleted: false)
Inventory.create!(category: kitchen, name: "MARTIN", historic_value: 21.99, book_value: 16.74, description: "chair", condition: "used", flat: f1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876116/flattrack/inventory_photos/chair_mi7aau.jpg", replaced: false, deleted: false)
Inventory.create!(category: kitchen, name: "MARTORP", historic_value: 29.99, book_value: 29.99, description: "cutlery, 30 pieces", condition: "used", flat: f1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876117/flattrack/inventory_photos/cutlery_ts8ite.jpg", replaced: false, deleted: false)
Inventory.create!(category: kitchen, name: "KARCHER 125440 Jana 4-tlg. Kochgeschirr-Set (Edelstahl 18/8)", historic_value: 74.99, book_value: 59.99 , description: "cookware", condition: "used", flat: f1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876116/flattrack/inventory_photos/cookware_woowqn.jpg", replaced: false, deleted: false)
Inventory.create!(category: bathroom, name: "SHARP ES-GFB7164W3-DE Waschmaschine (7 kg, 1600 U/Min., A+++)", historic_value: 268, book_value: 238, description: "washing machine", condition: "used", flat: f3, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876117/flattrack/inventory_photos/wahingmachine_yg0pu7.jpg", replaced: false, deleted: false)
Inventory.create!(category: livingroom, name: "FORSÅ", historic_value: 12.99, book_value: 7.49, description: "lamp", condition: "used", flat: f2, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876118/flattrack/inventory_photos/forsa_lamp_blmmum.jpg", replaced: false, deleted: false)
Inventory.create!(category: bathroom, name: "BLANKSJÖN", historic_value: 6.99, book_value: 0.00, description: "bath mat", condition: "replace", flat: f2, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876116/flattrack/inventory_photos/bath_mat_wgynca.jpg", replaced: false, deleted: false)
Inventory.create!(category: livingroom, name: "KNIPPE", historic_value: 17.99, book_value: 11.99, description: "coat rack", condition: "used", flat: f2, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876119/flattrack/inventory_photos/coat_rack_xgvv5a.jpg", replaced: false, deleted: false)
Inventory.create!(category: kitchen, name: "SVALKA", historic_value: 4.99, book_value: 2.49, description: "white wine glass", condition: "used", flat: f9, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876116/flattrack/inventory_photos/white_wine_glass_n3qb0t.jpg", replaced: false, deleted: false)
Inventory.create!(category: livingroom, name: "DYNAN", historic_value: 59.80, book_value: 47.60, description: "white wardrobe with door", condition: "used", flat: f9, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876116/flattrack/inventory_photos/white_wardrobe_hgrcgo.jpg", replaced: false, deleted: false)
Inventory.create!(category: kitchen, name: "Malise", historic_value: 2300, book_value: 2000, description: "desk by Holzgespür", condition: "used", flat: f1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563884690/flattrack/inventory_photos/holzgesp%C3%BCr_desk_m2jy3w.jpg", replaced: false, deleted: false)
Inventory.create!(category: livingroom, name: "KHAMAMA", historic_value: 200, book_value: 180, description: "KHAMAMA box", condition: "used", flat: f1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563884691/flattrack/inventory_photos/KHAMAMA_box_adbo1m.jpg", replaced: false, deleted: false)
Inventory.create!(category: kitchen, name: "WEICH Alpaca Kissen", historic_value: 40, book_value: 30, description: "alpaca pillow in apricot colour", condition: "used", flat: f1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563884690/flattrack/inventory_photos/alpaca_pillow_kzmfeq.jpg", replaced: false, deleted: false)
Inventory.create!(category: livingroom, name: "WEICH Alpaca Teppich", historic_value: 300, book_value: 200, description: "alpaca rug in apricot colour", condition: "used", flat: f1, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563884691/flattrack/inventory_photos/alpaca_rug_ulhtif.jpg", replaced: false, deleted: false)

Inventory.create!(category: kitchen, name: "TEFAL FV 4680 E3", historic_value: 33.99, book_value: 22.66, description: "flat iron", condition: "used", flat: f3, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876118/flattrack/inventory_photos/flatiron_iil8x4.jpg", replaced: false, deleted: false)
Inventory.create!(category: bathroom, name: "PHILIPS HP8230/00 Haartrockner Schwarz (2100 Watt)", historic_value: 17.99, book_value: 11.99, description: "hair dryer", condition: "used", flat: f4, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876118/flattrack/inventory_photos/hairdryer_zpwt6n.png", replaced: false, deleted: false)
Inventory.create!(category: kitchen, name: "PHILIPS SENSEO® HD 6556/00", historic_value: 77.99, book_value: 77.99 , description: "Coffee Maker", condition: "new", flat: f5, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876116/flattrack/inventory_photos/coffeemaker_exa9kf.jpg", replaced: true, deleted: false)
Inventory.create!(category: bathroom, name: "VILEDA 09470 VIVA EXPRESS ECO BLAU Bügelbrett", historic_value: 39.99, book_value: 29.99 , description: "Ironing Board", condition: "used", flat: f6, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876119/flattrack/inventory_photos/ironboard_jbgwfu.jpg", replaced: false, deleted: false)
Inventory.create!(category: bedroom, name: "SONGESAND", historic_value: 179.00, book_value: 119.00 , description: "white wardrobe", condition: "scratces at the feet from vacuum cleaning", flat: f6, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876118/flattrack/inventory_photos/songesand.JPG_edvevm.jpg", replaced: false, deleted: false)
Inventory.create!(category: livingroom, name: "NOT", historic_value: 13.99, book_value: 13.99 , description: "uplight", condition: "new", flat: f8, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876118/flattrack/inventory_photos/NOTlight_llskxh.jpg", replaced: true, deleted: false)
Inventory.create!(category: bathroom, name: "VÅGSJÖN", historic_value: 6.99, book_value: 0.00, description: "bath Towel", condition: "replace", flat: f9, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876117/flattrack/inventory_photos/bathtowels_bdiyzu.jpg", replaced: false, deleted: false)
Inventory.create!(category: bedroom, name: "DVALA", historic_value: 24.99, book_value: 24.99 , description: "bedclothes, 3 pieces", condition: "new", flat: f10, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876118/flattrack/inventory_photos/bedclothes_m2dzvx.jpg", replaced: true, deleted: false)
Inventory.create!(category: kitchen, name: "MARTIN", historic_value: 21.99, book_value: 16.74, description: "chair", condition: "used", flat: f11, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876116/flattrack/inventory_photos/chair_mi7aau.jpg", replaced: false, deleted: false)
Inventory.create!(category: kitchen, name: "MARTORP", historic_value: 29.99, book_value: 29.99, description: "cutlery, 30 pieces", condition: "used", flat: f12, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876117/flattrack/inventory_photos/cutlery_ts8ite.jpg", replaced: false, deleted: false)
Inventory.create!(category: kitchen, name: "KARCHER 125440 Jana 4-tlg. Kochgeschirr-Set (Edelstahl 18/8)", historic_value: 74.99, book_value: 59.99 , description: "cookware", condition: "used", flat: f13, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876116/flattrack/inventory_photos/cookware_woowqn.jpg", replaced: false, deleted: false)
Inventory.create!(category: bathroom, name: "SHARP ES-GFB7164W3-DE Waschmaschine (7 kg, 1600 U/Min., A+++)", historic_value: 268, book_value: 238, description: "washing machine", condition: "used", flat: f4, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876117/flattrack/inventory_photos/wahingmachine_yg0pu7.jpg", replaced: false, deleted: false)
Inventory.create!(category: livingroom, name: "FORSÅ", historic_value: 12.99, book_value: 7.49, description: "lamp", condition: "used", flat: f5, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876118/flattrack/inventory_photos/forsa_lamp_blmmum.jpg", replaced: false, deleted: false)
Inventory.create!(category: bathroom, name: "BLANKSJÖN", historic_value: 6.99, book_value: 0.00, description: "bath mat", condition: "replace", flat: f6, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876116/flattrack/inventory_photos/bath_mat_wgynca.jpg", replaced: false, deleted: false)
Inventory.create!(category: livingroom, name: "KNIPPE", historic_value: 17.99, book_value: 11.99, description: "coat rack", condition: "used", flat: f8, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876119/flattrack/inventory_photos/coat_rack_xgvv5a.jpg", replaced: false, deleted: false)
Inventory.create!(category: kitchen, name: "SVALKA", historic_value: 4.99, book_value: 2.49, description: "white wine glass", condition: "used", flat: f8, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876116/flattrack/inventory_photos/white_wine_glass_n3qb0t.jpg", replaced: false, deleted: false)
Inventory.create!(category: livingroom, name: "DYNAN", historic_value: 59.80, book_value: 47.60, description: "white wardrobe with door", condition: "used", flat: f10, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876116/flattrack/inventory_photos/white_wardrobe_hgrcgo.jpg", replaced: false, deleted: false)
Inventory.create!(category: kitchen, name: "Malise", historic_value: 2300, book_value: 2000, description: "desk by Holzgespür", condition: "used", flat: f9, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563884690/flattrack/inventory_photos/holzgesp%C3%BCr_desk_m2jy3w.jpg", replaced: false, deleted: false)
Inventory.create!(category: livingroom, name: "KHAMAMA", historic_value: 200, book_value: 180, description: "KHAMAMA box", condition: "used", flat: f11, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563884691/flattrack/inventory_photos/KHAMAMA_box_adbo1m.jpg", replaced: false, deleted: false)
Inventory.create!(category: kitchen, name: "WEICH Alpaca Kissen", historic_value: 40, book_value: 30, description: "alpaca pillow in apricot colour", condition: "used", flat: f12, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563884690/flattrack/inventory_photos/alpaca_pillow_kzmfeq.jpg", replaced: false, deleted: false)
Inventory.create!(category: livingroom, name: "WEICH Alpaca Teppich", historic_value: 300, book_value: 200, description: "alpaca rug in apricot colour", condition: "used", flat: f13, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563884691/flattrack/inventory_photos/alpaca_rug_ulhtif.jpg", replaced: false, deleted: false)

Inventory.create!(category: kitchen, name: "TEFAL FV 4680 E3", historic_value: 33.99, book_value: 22.66, description: "flat iron", condition: "used", flat: f13, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876118/flattrack/inventory_photos/flatiron_iil8x4.jpg", replaced: false, deleted: false)
Inventory.create!(category: bathroom, name: "PHILIPS HP8230/00 Haartrockner Schwarz (2100 Watt)", historic_value: 17.99, book_value: 11.99, description: "hair dryer", condition: "used", flat: f13, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876118/flattrack/inventory_photos/hairdryer_zpwt6n.png", replaced: false, deleted: false)
Inventory.create!(category: kitchen, name: "PHILIPS SENSEO® HD 6556/00", historic_value: 77.99, book_value: 77.99 , description: "Coffee Maker", condition: "new", flat: f9, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876116/flattrack/inventory_photos/coffeemaker_exa9kf.jpg", replaced: true, deleted: false)
Inventory.create!(category: bathroom, name: "VILEDA 09470 VIVA EXPRESS ECO BLAU Bügelbrett", historic_value: 39.99, book_value: 29.99 , description: "Ironing Board", condition: "used", flat: f13, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876119/flattrack/inventory_photos/ironboard_jbgwfu.jpg", replaced: false, deleted: false)
Inventory.create!(category: bedroom, name: "SONGESAND", historic_value: 179.00, book_value: 119.00 , description: "white wardrobe", condition: "scratces at the feet from vacuum cleaning", flat: f6, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876118/flattrack/inventory_photos/songesand.JPG_edvevm.jpg", replaced: false, deleted: false)
Inventory.create!(category: livingroom, name: "NOT", historic_value: 13.99, book_value: 13.99 , description: "uplight", condition: "new", flat: f4, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876118/flattrack/inventory_photos/NOTlight_llskxh.jpg", replaced: true, deleted: false)
Inventory.create!(category: bathroom, name: "VÅGSJÖN", historic_value: 6.99, book_value: 0.00, description: "bath Towel", condition: "replace", flat: f2, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876117/flattrack/inventory_photos/bathtowels_bdiyzu.jpg", replaced: false, deleted: false)
Inventory.create!(category: bedroom, name: "DVALA", historic_value: 24.99, book_value: 24.99 , description: "bedclothes, 3 pieces", condition: "new", flat: f2, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876118/flattrack/inventory_photos/bedclothes_m2dzvx.jpg", replaced: true, deleted: false)
Inventory.create!(category: kitchen, name: "MARTIN", historic_value: 21.99, book_value: 16.74, description: "chair", condition: "used", flat: f4, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876116/flattrack/inventory_photos/chair_mi7aau.jpg", replaced: false, deleted: false)
Inventory.create!(category: kitchen, name: "MARTORP", historic_value: 29.99, book_value: 29.99, description: "cutlery, 30 pieces", condition: "used", flat: f11, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876117/flattrack/inventory_photos/cutlery_ts8ite.jpg", replaced: false, deleted: false)
Inventory.create!(category: kitchen, name: "KARCHER 125440 Jana 4-tlg. Kochgeschirr-Set (Edelstahl 18/8)", historic_value: 74.99, book_value: 59.99 , description: "cookware", condition: "used", flat: f2, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876116/flattrack/inventory_photos/cookware_woowqn.jpg", replaced: false, deleted: false)
Inventory.create!(category: bathroom, name: "SHARP ES-GFB7164W3-DE Waschmaschine (7 kg, 1600 U/Min., A+++)", historic_value: 268, book_value: 238, description: "washing machine", condition: "used", flat: f3, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876117/flattrack/inventory_photos/wahingmachine_yg0pu7.jpg", replaced: false, deleted: false)
Inventory.create!(category: livingroom, name: "FORSÅ", historic_value: 12.99, book_value: 7.49, description: "lamp", condition: "used", flat: f4, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876118/flattrack/inventory_photos/forsa_lamp_blmmum.jpg", replaced: false, deleted: false)
Inventory.create!(category: bathroom, name: "BLANKSJÖN", historic_value: 6.99, book_value: 0.00, description: "bath mat", condition: "replace", flat: f5, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876116/flattrack/inventory_photos/bath_mat_wgynca.jpg", replaced: false, deleted: false)
Inventory.create!(category: livingroom, name: "KNIPPE", historic_value: 17.99, book_value: 11.99, description: "coat rack", condition: "used", flat: f8, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876119/flattrack/inventory_photos/coat_rack_xgvv5a.jpg", replaced: false, deleted: false)
Inventory.create!(category: kitchen, name: "SVALKA", historic_value: 4.99, book_value: 2.49, description: "white wine glass", condition: "used", flat: f5, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876116/flattrack/inventory_photos/white_wine_glass_n3qb0t.jpg", replaced: false, deleted: false)
Inventory.create!(category: livingroom, name: "DYNAN", historic_value: 59.80, book_value: 47.60, description: "white wardrobe with door", condition: "used", flat: f8, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876116/flattrack/inventory_photos/white_wardrobe_hgrcgo.jpg", replaced: false, deleted: false)
Inventory.create!(category: kitchen, name: "Malise", historic_value: 2300, book_value: 2000, description: "desk by Holzgespür", condition: "used", flat: f10, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563884690/flattrack/inventory_photos/holzgesp%C3%BCr_desk_m2jy3w.jpg", replaced: false, deleted: false)
Inventory.create!(category: livingroom, name: "KHAMAMA", historic_value: 200, book_value: 180, description: "KHAMAMA box", condition: "used", flat: f14, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563884691/flattrack/inventory_photos/KHAMAMA_box_adbo1m.jpg", replaced: false, deleted: false)
Inventory.create!(category: kitchen, name: "WEICH Alpaca Kissen", historic_value: 40, book_value: 30, description: "alpaca pillow in apricot colour", condition: "used", flat: f11, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563884690/flattrack/inventory_photos/alpaca_pillow_kzmfeq.jpg", replaced: false, deleted: false)
Inventory.create!(category: livingroom, name: "WEICH Alpaca Teppich", historic_value: 300, book_value: 200, description: "alpaca rug in apricot colour", condition: "used", flat: f14, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563884691/flattrack/inventory_photos/alpaca_rug_ulhtif.jpg", replaced: false, deleted: false)

# for the pitch f7 Inventory
Inventory.create!(category: kitchen, name: "TEFAL FV 4680 E3", historic_value: 33.99, book_value: 22.66, description: "flat iron", condition: "used", flat: f7, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876118/flattrack/inventory_photos/flatiron_iil8x4.jpg", replaced: false, deleted: false)
Inventory.create!(category: bathroom, name: "PHILIPS HP8230/00 Haartrockner Schwarz (2100 Watt)", historic_value: 17.99, book_value: 11.99, description: "hair dryer", condition: "used", flat: f7, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876118/flattrack/inventory_photos/hairdryer_zpwt6n.png", replaced: false, deleted: false)
Inventory.create!(category: kitchen, name: "PHILIPS SENSEO® HD 6556/00", historic_value: 77.99, book_value: 77.99 , description: "Coffee Maker", condition: "new", flat: f7, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876116/flattrack/inventory_photos/coffeemaker_exa9kf.jpg", replaced: true, deleted: false)
Inventory.create!(category: bathroom, name: "VILEDA 09470 VIVA EXPRESS ECO BLAU Bügelbrett", historic_value: 39.99, book_value: 29.99 , description: "Ironing Board", condition: "used", flat: f7, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876119/flattrack/inventory_photos/ironboard_jbgwfu.jpg", replaced: false, deleted: false)
Inventory.create!(category: bedroom, name: "SONGESAND", historic_value: 179.00, book_value: 119.00 , description: "white wardrobe", condition: "scratces at the feet from vacuum cleaning", flat: f7, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876118/flattrack/inventory_photos/songesand.JPG_edvevm.jpg", replaced: false, deleted: false)
Inventory.create!(category: livingroom, name: "NOT", historic_value: 13.99, book_value: 13.99 , description: "uplight", condition: "new", flat: f7, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876118/flattrack/inventory_photos/NOTlight_llskxh.jpg", replaced: true, deleted: false)
Inventory.create!(category: bathroom, name: "VÅGSJÖN", historic_value: 6.99, book_value: 0.00, description: "bath Towel", condition: "replace", flat: f7, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876117/flattrack/inventory_photos/bathtowels_bdiyzu.jpg", replaced: false, deleted: false)
Inventory.create!(category: bedroom, name: "DVALA", historic_value: 24.99, book_value: 24.99 , description: "bedclothes, 3 pieces", condition: "new", flat: f7, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876118/flattrack/inventory_photos/bedclothes_m2dzvx.jpg", replaced: true, deleted: false)
Inventory.create!(category: kitchen, name: "MARTIN", historic_value: 21.99, book_value: 16.74, description: "chair", condition: "used", flat: f7, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876116/flattrack/inventory_photos/chair_mi7aau.jpg", replaced: false, deleted: false)
Inventory.create!(category: kitchen, name: "MARTORP", historic_value: 29.99, book_value: 29.99, description: "cutlery, 30 pieces", condition: "used", flat: f7, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876117/flattrack/inventory_photos/cutlery_ts8ite.jpg", replaced: false, deleted: false)
Inventory.create!(category: kitchen, name: "KARCHER 125440 Jana 4-tlg. Kochgeschirr-Set (Edelstahl 18/8)", historic_value: 74.99, book_value: 59.99 , description: "cookware", condition: "used", flat: f7, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876116/flattrack/inventory_photos/cookware_woowqn.jpg", replaced: false, deleted: false)
Inventory.create!(category: bathroom, name: "SHARP ES-GFB7164W3-DE Waschmaschine (7 kg, 1600 U/Min., A+++)", historic_value: 268, book_value: 238, description: "washing machine", condition: "used", flat: f7, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876117/flattrack/inventory_photos/wahingmachine_yg0pu7.jpg", replaced: false, deleted: false)
Inventory.create!(category: livingroom, name: "FORSÅ", historic_value: 12.99, book_value: 7.49, description: "lamp", condition: "used", flat: f7, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876118/flattrack/inventory_photos/forsa_lamp_blmmum.jpg", replaced: false, deleted: false)
Inventory.create!(category: bathroom, name: "BLANKSJÖN", historic_value: 6.99, book_value: 0.00, description: "bath mat", condition: "replace", flat: f7, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876116/flattrack/inventory_photos/bath_mat_wgynca.jpg", replaced: false, deleted: false)
Inventory.create!(category: livingroom, name: "KNIPPE", historic_value: 17.99, book_value: 11.99, description: "coat rack", condition: "used", flat: f7, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876119/flattrack/inventory_photos/coat_rack_xgvv5a.jpg", replaced: false, deleted: false)
Inventory.create!(category: kitchen, name: "SVALKA", historic_value: 4.99, book_value: 2.49, description: "white wine glass", condition: "used", flat: f7, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876116/flattrack/inventory_photos/white_wine_glass_n3qb0t.jpg", replaced: false, deleted: false)
# Inventory.create!(category: livingroom, name: "DYNAN", historic_value: 59.80, book_value: 47.60, description: "white wardrobe with door", condition: "used", flat: f7, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563876116/flattrack/inventory_photos/white_wardrobe_hgrcgo.jpg", replaced: false, deleted: false)
Inventory.create!(category: kitchen, name: "Malise", historic_value: 2300, book_value: 2000, description: "desk by Holzgespür", condition: "used", flat: f7, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563884690/flattrack/inventory_photos/holzgesp%C3%BCr_desk_m2jy3w.jpg", replaced: false, deleted: false)
Inventory.create!(category: livingroom, name: "KHAMAMA", historic_value: 200, book_value: 180, description: "KHAMAMA box", condition: "used", flat: f7, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563884691/flattrack/inventory_photos/KHAMAMA_box_adbo1m.jpg", replaced: false, deleted: false)
Inventory.create!(category: kitchen, name: "WEICH Alpaca Kissen", historic_value: 40, book_value: 30, description: "alpaca pillow in apricot colour", condition: "used", flat: f7, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563884690/flattrack/inventory_photos/alpaca_pillow_kzmfeq.jpg", replaced: false, deleted: false)
Inventory.create!(category: livingroom, name: "WEICH Alpaca Teppich", historic_value: 300, book_value: 200, description: "alpaca rug in apricot colour", condition: "used", flat: f7, photo: "https://res.cloudinary.com/djn5khfwt/image/upload/v1563884691/flattrack/inventory_photos/alpaca_rug_ulhtif.jpg", replaced: false, deleted: false)

