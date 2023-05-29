import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="map"
export default class extends Controller {
  static values = {
    apiKey: String,
    latitude: Number,
    longitude: Number,
    markers: Array
  }
  connect() {
    mapboxgl.accessToken = this.apiKeyValue
    console.log("hello")
    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/mapbox/streets-v10",
      //center: [41.3987283, 2.16344],
      dragPan: true,
      cooperativeGestures: true,
    })

    this.#addMarkersToMap()
    this.#fitMapToMarkers()

    this.map.scrollZoom.disable();
    this.map.addControl(new mapboxgl.NavigationControl());
  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window_html)
      const customMarker = document.createElement("div")
      customMarker.innerHTML = marker.marker_html

      new mapboxgl.Marker(customMarker)
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(this.map)
    })
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }
}
