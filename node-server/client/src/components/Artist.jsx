const React = require('react')
const Album = require('./Album')

let Artist = (props)=>{
  console.log(props)
  let albums=props.artistData.albums.map((album)=>{
    console.log(album)
    return <Album key={album.id} albumInfo={album}/>
  })
  console.log(albums)



  return (
    <div>
      <hr></hr>
      <h4> Name: {props.artistData.name}</h4>
      <p> Genre: {props.artistData.genre}</p>
      <div className="album-components-container">{albums}</div>
    </div>)
}

module.exports=Artist