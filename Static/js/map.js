// Add console.log to check to see if our code is working.
console.log("working");

// Get maps
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

// GeoJSON
let usStateCounty = "https://raw.githubusercontent.com/sloth143chunk/Internet_Access_Analysis/tc/viz/Static/js/state_county_boundaries.json"

//Create a style for county lines.
let usStateCountyStyle = {
    color: '#003366',
    fillColor: '#ffff00',
    weight: .5,
}

// Grabbing Coords
d3.json(usStateCounty).then(function(data) {
    // printing
    console.log(data);
    console.log(data.features);
    // Creating a GeoJSON layer with the retrieved data.
    console.log(data.features.map(el => ({
        "stateName": el.properties.type
    })));
    console.log(data.features.map(el => ({
        "type": el.properties.state_name
    })));
    console.log(data.features.map(el => ({
        "countyName": el.properties.county_name
    })));

    // adding style and layers to popup
    L.geoJson(data,{
        style:usStateCountyStyle,
        onEachFeature: function onEachFeature(feature, layer) {
            if (feature.properties.type == 'county'){
                layer.bindPopup("<div class='map-popup-header'><h4>"+feature.properties.county_name+", "+feature.properties.stateName+"</h4></div>"+
                "<div class='map-popup-contents'><p>"+"GEO ID: "+feature.properties.geo_id+"<br>"+
                "Internet Score: "+"</p></div>")
            }
    }})
    .addTo(map);
    // L.geoJson(data,{
    //     style:usStateCountyStyle,
    //     onEachFeature: function onEachFeature(feature, layer) {
    //         layer.bindPopup("<div class='map-popup-header'><h4>"+feature.properties.county_name+", "+feature.properties.stateName+"</h4></div>"+
    //         "<div class='map-popup-contents'><p>"+"GEO ID: "+feature.properties.geo_id+"<br>"+
    //         "Internet Score: "+"</p></div>")
    // }})
    // .addTo(map);
});