function initMap() {
  if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(position) {
      var latitude = position.coords.latitude;
      var longitude = position.coords.longitude;
  
      var currentLocation = new google.maps.LatLng(latitude, longitude);
      var map = new google.maps.Map(document.getElementById('map'), {
        center: currentLocation,
        zoom: 11
      });
  
      // Additional map initialization or marker placement code here
  
    }, function() {
      // Error handling when geolocation fails
      var map = new google.maps.Map(document.getElementById('map'), {
        center: {lat: 51.049999, lng: -114.066666},
        zoom: 11
      });
    });
  } else {
    // Error handling when geolocation is not supported
    var map = new google.maps.Map(document.getElementById('map'), {
      center: {lat: 51.049999, lng: -114.066666},
      zoom: 11
    });
  }
}
