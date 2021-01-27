Song.destroy_all
Song.reset_pk_sequence
User.destroy_all
User.reset_pk_sequence
Memory.destroy_all
Memory.reset_pk_sequence

fun=Song.create(name:"we are young")
ludacris=Song.create(name:"pimpin all are the world")
fithy_cent=Song.create(name:"baby by me")

dj_ant=User.create(name:"anthony", username:"dj ant", age:25)
lucid=User.create(name:"luck", username:"lucid", age:29)
dj_lez=User.create(name:"lez", username:"dj lez", age:33)

graduation=Memory.create(name:"graduation", date_and_time:"6 29 1999", description:"graduation", user_id:dj_ant.id, song_id: fun.id)
vac_with_the_boys=Memory.create(name:"vac_with_the_boys", date_and_time:"7 4 1999", description:"trip to miami", user_id:lucid.id,song_id:ludacris.id)
first_job_that_paid_twentyfive_dollars=Memory.create(name:"first job that paid twentyfive dollars", date_and_time:"8 6 2011", description: "new job", user_id: dj_lez.id, song_id:fithy_cent.id )
goat=Memory.create(name:"goat fishing", date_and_time:"5 16 2017", description:"fishing", user_id:dj_ant.id, song_id:ludacris.id)



