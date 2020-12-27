// Add console.log to check to see if our code is working.
console.log("working");

// We create the tile layer that will be the background of our map.
let light = L.tileLayer('https://api.mapbox.com/styles/v1/mapbox/light-v10/tiles/{z}/{x}/{y}?access_token={accessToken}', {
	attribution: 'Map data &copy; <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery (c) <a href="https://www.mapbox.com/">Mapbox</a>',
	maxZoom: 18,
	accessToken: API_KEY
});

let outdoors = L.tileLayer('https://api.mapbox.com/styles/v1/mapbox/outdoors-v11/tiles/{z}/{x}/{y}?access_token={accessToken}', {
attribution: 'Map data © <a href="https://www.openstreetmap.org/">OpenStreetMap</a> contributors, <a href="https://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery (c) <a href="https://www.mapbox.com/">Mapbox</a>',
    maxZoom: 18,
    accessToken: API_KEY
});

let map = L.map('mapid', {
	center: [40.7, -94.5],
	zoom: 3,
    layers: [light]
});

// Create a base layer that holds all three maps.
let baseMaps = {
    "Light Map": light,
    "Outdoor Map": outdoors,
};

// Pass our map layers into our layers control and add the layers control to the map.
L.control.layers(baseMaps).addTo(map);

//https://github.com/jgoodall/us-maps
let usCounties = "https://raw.githubusercontent.com/jgoodall/us-maps/master/geojson/county.geo.json"
let usStates = "https://raw.githubusercontent.com/jgoodall/us-maps/master/geojson/state.geo.json"

// Create a style for county lines.
let countyStyle = {
    color: '#003366',
    fillColor: '#ffff00',
    weight: .5,
}

// Create a style for state lines.
let stateStyle = {
    color: '#5f0087',
    //fillColor: '#ffff00',
    weight: 1,
}

// Grabbing States
d3.json(usStates).then(function(data) {
    // printing
    console.log(data);

    // adding styling
    L.geoJson(data,{
        style:stateStyle
    })
    .addTo(map);
});

// Grabbing Counties
d3.json(usCounties).then(function(data) {
    // printing
    console.log(data);

    // adding styling
    L.geoJson(data,{
        style:countyStyle,
        onEachFeature: function onEachFeature(feature, layer) {
            layer.bindPopup("<div class='map-popup-header'><h4>"+feature.properties.NAMELSAD10+", "+feature.properties.STUSPS10+"</h4></div>"+
            "<div class='map-popup-contents'><p>"+"GEO ID: "+feature.properties.GEOID10+"<br>"+
            "Internet Score: "+"</p></div>")
    }})
    .addTo(map);
});