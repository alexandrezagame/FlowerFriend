import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  const fitMapToMarkers = (map, markers) => {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
    map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
  };

  if (mapElement) { // only build a map if there's a div#map to inject into

    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/alexbacelo/ck7x8tzin0lt81imhg09dxx6k'
    });

    const markers = JSON.parse(mapElement.dataset.markers);
    markers.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.infoWindow); // add this

      const element = document.createElement('div');
      element.className = 'marker';
      element.style.backgroundImage = `url('${marker.image_url}')`;
      element.style.backgroundSize = 'contain';
      element.style.width = '50px';
      element.style.height = '50px';

      new mapboxgl.Marker(element)
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup) // add this
        .addTo(map);
    });

    fitMapToMarkers(map, markers);
    map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
                                        mapboxgl: mapboxgl }));

  }
};

export { initMapbox };
