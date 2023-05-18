function initMap(shelters) {
  console.log("function init is called");
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(
      function (position) {
        var latitude = position.coords.latitude;
        var longitude = position.coords.longitude;

        var currentLocation = new google.maps.LatLng(latitude, longitude);
        var map = new google.maps.Map(document.getElementById("map"), {
          center: currentLocation,
          zoom: 11,
        });

        var infoWindow = new google.maps.InfoWindow();

        shelters.forEach(function (shelter) {
          var address = shelter.address;
          var shelterName = shelter.name;
          var shelterId = shelter.id;

          // Geocode the address to obtain latitude and longitude coordinates
          var geocoder = new google.maps.Geocoder();
          geocoder.geocode({ address: address }, function (results, status) {
            if (status === "OK") {
              var marker = new google.maps.Marker({
                position: results[0].geometry.location,
                map: map,
                title: shelter.name,
              });

              // Create the content for the info window
              var content = '<div><strong><a href="/shelters/' + shelterId + '">' + shelterName + '</a></strong></div>'

              // Add a click event listener to the marker
              marker.addListener("click", function () {
                infoWindow.setContent(content);
                infoWindow.open(map, marker);
              });
            }
          });
        });
      },
      function () {
        // Error handling when geolocation fails
        var map = new google.maps.Map(document.getElementById("map"), {
          center: { lat: 51.049999, lng: -114.066666 },
          zoom: 11,
        });
      }
    );
  } else {
    // Error handling when geolocation is not supported
    var map = new google.maps.Map(document.getElementById("map"), {
      center: { lat: 51.049999, lng: -114.066666 },
      zoom: 11,
    });
  }
  console.log("function init ends");
}
