Stock.delete_all()
Album.delete_all()
Artist.delete_all()

ar1 = Artist.create({name: "King", genre: "Blues"})
ar2 = Artist.create({name: "Mossy Stones", genre: "Thrash Metal"})
ar3 = Artist.create({name: "The What", genre: "Jpop"})

al1 = Album.create({name: "I want to be imprisoned", cover: "K-IWTBI.png", artist_id: ar1.id})
al2 = Album.create({name: "I want to drive my monster truck", cover: "K-IWTDMMT.png", artist_id: ar1.id})
al3 = Album.create({name: "Some boys", cover: "MS-SB.png", artist_id: ar2.id})
al4 = Album.create({name: "It's Soft", cover: "TW-IS.png", artist_id: ar3.id})

Stock.create({
  medium: "CD",
  stock_level: 17,
  stock_threshold: 10,
  buy_price: 5,
  sell_price: 8,
  album_id: al1.id
  })
Stock.create({
  medium: "Vinyl",
  stock_level: 20,
  stock_threshold: 10,
  buy_price: 3,
  sell_price: 10,
  album_id: al2.id
  })
Stock.create({
  medium: "CD",
  stock_level: 4,
  stock_threshold: 10,
  buy_price: 5,
  sell_price: 8,
  album_id: al3.id
  })
Stock.create({
  medium: "Interpretive Dance Steps",
  stock_level: 0,
  stock_threshold: 10,
  buy_price: 5,
  sell_price: 8,
  album_id: al4.id
  })
