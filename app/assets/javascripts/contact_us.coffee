# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).on 'turbolinks:load', ->
    # Google Maps
    #-----------------------------------------------

    initialize = ->
      mapOptions = 
        zoom: myZoom
        mapTypeId: google.maps.MapTypeId.ROADMAP
        center: myLatlng
        scrollwheel: false
      map = new (google.maps.Map)(document.getElementById('map-canvas'), mapOptions)
      marker = new (google.maps.Marker)(
        map: map
        draggable: true
        animation: google.maps.Animation.DROP
        position: myLatlng)
      google.maps.event.addDomListener window, 'resize', ->
        map.setCenter myLatlng
        return
      return
    if $('#map-canvas').length > 0
      map = undefined
      myLatlng = undefined
      myZoom = undefined
      marker = undefined
      # Set the coordinates of your location
      myLatlng = new (google.maps.LatLng)(5.2744673,100.4634814)
      myZoom = 17
      google.maps.event.addDomListener window, 'load', initialize
    return