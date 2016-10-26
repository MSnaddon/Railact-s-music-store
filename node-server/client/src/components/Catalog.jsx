const React = require('react');
const Artist = require ('./Artist')

let Catalog = React.createClass({
  getInitialState: function(){
    return {}
  },
  render: function(){
    let artists = this.props.catalogData.map((artist)=>{
      return <Artist key={artist.id} artistData={artist}/>
    })
    console.log(artists)
    return <div>{artists}}</div>
  }


})


module.exports = Catalog