Artist.create(name: "The Stooges")
Artist.create(name: "Andrew Hill")
Artist.create(name: "John Coltrane")
Artist.create(name: "Gang Starr")
Artist.create(name: "The Notorious B.I.G.")
Artist.create(name: "Lord Finesse")
Artist.create(name: "Wolf Eyes")
Artist.create(name: "Double Leopards")
Artist.create(name: "Metalux")
Artist.create(name: "Wire")
Artist.create(name: "Discharge")
Artist.create(name: "SPK")
Artist.create(name: "Throbbing Gristle")
Artist.create(name: "Hunting Lodge")
Artist.create(name: "Coil")
Artist.create(name: "Crass")
Artist.create(name: "Wu-Tang Clan")
Artist.create(name: "Bolt Thrower")
Artist.create(name: "Black Sabbath")
Artist.create(name: "Napalm Death")
Artist.create(name: "Sleep")
Artist.create(name: "Albert Ayler")
Artist.create(name: "Sonny Sharrock")
Artist.create(name: "Al Green")
Artist.create(name: "Betty Davis")
Artist.create(name: "Marva Whitney")
Artist.create(name: "Cymande")



Album.create(title: "Raw Power", format: "CD", year: 1973)
Album.create(title: "Fun House", format: "CD", year: 1970)
Album.create(title: "Point Of Departure", format: "CD", year: 1965)
Album.create(title: "A Love Supreme", format: "CD", year: 1965)
Album.create(title: "A Hole Is True", format: "CD", year: 2005)
Album.create(title: "Hard To Earn", format: "CD", year: 1994)
Album.create(title: "Ready To Die", format: "CD", year: 1994)
Album.create(title: "The Awakening", format: "CD", year: 1996)
Album.create(title: "Human Animal", format: "CD", year: 2006)
Album.create(title: "1-0-0-3", format: "cassette", year: 2009)
Album.create(title: "Chairs Missing", format: "CD", year: 1978)
Album.create(title: "Why?", format: "CD", year: 1981)
Album.create(title: "Auto Da Fe", format: "CD", year: 1983)
Album.create(title: "Heathen Earth", format: "CD", year: 1980)
Album.create(title: "Will", format: "LP", year: 1983)
Album.create(title: "Love's Secret Domain", format: "CD", year: 1991)
Album.create(title: "The Feeding Of The 5000", format: "CD", year: 1978)
Album.create(title: "Enter The Wu-Tang (36 Chambers)", format: "CD", year: 1993)
Album.create(title: "War Master", format: "CD", year: 1991)






Genre.create(name: "Punk")
Genre.create(name: "Hip-Hop")
Genre.create(name: "Noise")
Genre.create(name: "Industrial")
Genre.create(name: "Metal")
Genre.create(name: "Soul")
Genre.create(name: "Jazz")

ArtistAlbumSongGenres.create(artist_id: 1, album_id: 1, genre_id: 1)
ArtistAlbumSongGenres.create(artist_id: 1, album_id: 2, genre_id: 1)
ArtistAlbumSongGenres.create(artist_id: 2, album_id: 3, genre_id: 7)
ArtistAlbumSongGenres.create(artist_id: 3, album_id: 4, genre_id: 7)
ArtistAlbumSongGenres.create(artist_id: 8, album_id: 5, genre_id: 3)