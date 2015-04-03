#_place_label[type='city'][localrank=1][zoom>=4][zoom<9],
#_place_label[type='city'][localrank=2][zoom>=5][zoom<10],
#_place_label[type='city'][localrank=3][zoom>=7][zoom<10],
#_place_label[type='city'][localrank>=4][localrank>9][zoom>=8][zoom<10],
#_place_label[type='town'][localrank<=1][zoom>=9][zoom<10] {
  shield-name: @name;
  shield-face-name: @sans;
  shield-size: 12;
  shield-fill: @text;
  shield-halo-fill: @land;
  shield-halo-radius: 1;
  shield-unlock-image: true;
  shield-file: url("dot.svg");
  shield-wrap-width: 80;
  shield-line-spacing: -2;

  shield-text-dx: 6;
  shield-text-dy: 6;
}


// Mid priority place labels //
#_place_label[type='town'][localrank<=2][zoom>=10],
#_place_label[type='village'][localrank<=2][zoom>=12],
#_place_label[type='hamlet'][localrank<=2][zoom>=13],
#_place_label[type='town'][zoom>=14],
#_place_label[type='village'][zoom>=14],
#_splace_label[type='hamlet'][zoom>=14] { 
  shield-name: @name;
  shield-face-name: @sans;
  shield-size: 12;
//  shield-fill: @text;
  shield-fill: red;
  shield-halo-fill: @land;
  shield-halo-radius: 1;
  shield-unlock-image: true;
  shield-file: url("dot.svg");
  shield-wrap-width: 80;
  shield-line-spacing: -2;

  shield-text-dx: 6;
  shield-text-dy: 6;
}

// Low priority place labels //
#_place_label[type='suburb'][localrank<=2][zoom>=12],
#_place_label[type='neighbourhood'][localrank<=2][zoom>=13],
#_place_label[type='suburb'][zoom>=14],
#_place_label[type='neighbourhood'][zoom>=15] { 
  shield-name: @name;
  shield-face-name: @sans;
  shield-size: 12;
  shield-fill: @text;
  shield-halo-fill: @land;
  shield-halo-radius: 1;
  shield-unlock-image: true;
  shield-file: url("dot.svg");
  shield-wrap-width: 80;
  shield-line-spacing: -2;

  shield-text-dx: 6;
  shield-text-dy: 6;
//  text-name: @name;
//  text-face-name: @sans;
//  text-size: 14;
//  text-fill: @text;
//  text-halo-fill: @land;
//  text-halo-radius: 2;
//  text-min-distance: 4;
//  text-wrap-width: 60;
}

// Road labels
#_road_label[len>2000] {
  text-placement: line;
  text-transform: uppercase;
  text-face-name: @sans;
  text-name: @name;
  text-size: 9;
  text-min-distance: 100;
  text-halo-fill: @land;
  text-halo-radius: 1;
  text-fill: @text;
  [zoom>=17] { text-size: 11;}
}

// Water labels
#_marine_label { 
  text-name: @name;
  text-face-name: @sans_bold;
  text-fill: @text;
  text-size: 12;
  text-halo-fill: @water;
  text-halo-radius: 1;
  text-wrap-before: true;
  text-wrap-width: 90;
  [labelrank=1] {
   text-size: 18;
  }
}

#_water_label {
  [zoom<=13],
  [zoom>=14][area>500000],
  [zoom>=16][area>10000],
  [zoom>=17] {
    text-name: @name;
    text-face-name: @sans_bold;
    text-fill: @text;
    text-size: 12;
    text-halo-fill: @water;
    text-halo-radius: 1;
    text-wrap-width: 60;
    text-wrap-before: true;
    text-avoid-edges: true;
  }
}

#_waterway_label[type='river'][zoom>=13],
#_waterway_label[type='canal'][zoom>=14],
#_waterway_label[type='stream'][zoom>=15] { 
  text-name: @name;
  text-face-name: @sans_bold;
  text-fill: @text;
  text-min-distance: 60;
  text-size: 10;
  text-halo-fill: @water;
  text-halo-radius: 1;
  text-wrap-before: true;
  text-avoid-edges: true;
  text-placement: line;
}

// Place labels
#_poi_label[maki='park'][scalerank<=2],
#_poi_label[maki='airport'][scalerank<=2],
#_poi_label[maki='airfield'][scalerank<=2],
#_poi_label[maki='rail'][scalerank<=2],
#_poi_label[maki='school'][scalerank<=2],
#_poi_label[scalerank='hospital'][scalerank<=2] { 
  text-face-name: @sans_bold;
  text-allow-overlap: false;
  text-name: @name;
  text-size: 9;
  text-line-spacing: -2;
  text-min-distance: 50;
  text-wrap-width: 60;
  text-halo-fill: @land;
  text-halo-radius: 1;
  text-fill: @text;
}
