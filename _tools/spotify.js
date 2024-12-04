const fs = require('fs')
const https = require('https')
const { argv } = require('process')
const options = {
  hostname: 'api.spotify.com',
  port: 443,
  path: '/v1/playlists/67KaWBZICUBshbQgGVl8Jt',
  method: 'GET',
  headers: {
      "Accept" : "application/json",
      "Content-Type" : "application/json",
      "Authorization" : "Bearer " + argv[2]
  }
}

const req = https.request(options, res => {
  let allData = ""
  
  console.log(`statusCode: ${res.statusCode}`)

  res.on('data', d => {
    allData += d
  })

  res.on('end', () => {
      let response = JSON.parse(allData)
      console.log(response.external_urls.spotify)
      let episodes = response.tracks.items.map( i => { 
          return {
              added_at: new Date(i.added_at),
              show: i.track.artists[0].name,
              name: i.track.name,
              images: i.track.album.images,
              url: i.track.external_urls.spotify
          }
      })
      episodes.sort((a,b) => b.added_at - a.added_at)
      
      fs.writeFileSync('../_data/podcasts.json', JSON.stringify(episodes))
      
  })
})

req.on('error', error => {
  console.error(error)
})

req.end()
