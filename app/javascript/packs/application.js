import "bootstrap";

import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
// Call Mapboxg
import { initMapbox } from "../plugins/init_mapbox" ;
initMapbox();

// Call Mapboxg
import { initAutocomplete } from "../plugins/init_autocomplete" ;
initAutocomplete();
