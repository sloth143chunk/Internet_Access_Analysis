// Add console.log to check to see if our code is working.
console.log("working");

// We create the tile layer that will be the background of our map.
let streets = L.tileLayer('https://api.mapbox.com/styles/v1/mapbox/light-v10/tiles/{z}/{x}/{y}?access_token={accessToken}', {
	attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery (c) <a href="https://www.mapbox.com/">Mapbox</a>',
	maxZoom: 18,
	accessToken: API_KEY
});

let map = L.map('mapid', {
	center: [40.7, -94.5],
	zoom: 3,
	layers: [streets]
});

streets.addTo(map)

// Create a base layer that holds all three maps.
let baseMaps = {
    "Streets": streets,
    //"Satellite": satelliteStreets,
    //"Dark": dark
};
