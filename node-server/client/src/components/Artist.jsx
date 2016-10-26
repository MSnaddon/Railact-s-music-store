const React = require('react')
// const Album = require('album')

let Artist = (props)=>{
  console.log(props)
  let albums=props.artistData.albums.map((album)=>{
    console.log(album)
    return <Album albumInfo={album}/>
  })
  console.log(albums)



  return (
    <div>
    <h4> Name: {props.artistData.name}</h4>
    <p> Genre: {props.artistData.genre}</p>
    <div className="album-components-container">{albums}</div>
    </div>)
}

module.exports=Artist