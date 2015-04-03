// BostonHoods: gabriel-florit.d5687028

// northamerica_ocean: gabriel-florit.19720588
// ma towns: gabriel-florit.284f070c
// mapbox.mapbox-terrain-v2
// mapbox.mapbox-streets-v5

//gabriel-florit.284f070c,mapbox.mapbox-streets-v5,gabriel-florit.19720588

// Common Colors //

//@land: #f4efe1;
@land: white;
//@water: #cdd;
@water: #ecf9ff;
//@water: white;
@water_dark: #185869;  // for the inline/shadow
//@water_dark: #cdd;
@crop: #eeeed4;
@grass: #e7ebd1;
@scrub: #e0e8cd;
@wood: #d4e2c6;
@snow: #f4f8ff;
@rock: #ddd;
@sand: mix(#ffd,@land,33%);
// These colors need to take `comp-op:multiply` into account:
@cemetery: #edf4ed;
@pitch: fadeout(#fff,50%);
@park: #edf9e4;
@piste: mix(blue,@land,5);
@school: #fbf6ff;
@hospital: #fff0f0;
@builtup: #f6faff;

// Background //

Map {
  background-color: @land;
}

#america_water {
  polygon-fill: #b8dae9;
  polygon-clip: false;

  ::outline {
    image-filters: agg-stack-blur(2,2);
    image-filters-inflate: true;
    polygon-clip: false;
    polygon-fill: @water;

    polygon-gamma: 0.6;
    [zoom<6] { polygon-gamma: 0.4; }
  }
}

#america_water {
  line-color: #CCC;
  line-width: 0.5;
}

#TOWNS[TOWN='BOSTON'] {
  polygon-fill: #EDEDED;
}
