//gabriel-florit.19720588,mapbox.mapbox-streets-v5,gabriel-florit.284f070c,gabriel-florit.d5687028,gabriel-florit.c09cf669,gabriel-florit.84745274,gabriel-florit.c97b61ea

// Languages: name (local), name_en, name_fr, name_es, name_de
@name: '[name_en]';

// Fonts //
@sans: 'Arial Unicode MS Regular';
@sans_bold: 'Arial Unicode MS Bold';

/*
This style is designed to be easily recolored by adjusting the color
variables below. For predicatable feature relationships,
maintain or invert existing value (light to dark) scale.
*/


@buildings: #cbcbc4;
@crop: #eeeed4;
@grass: #e7ebd1;
@grass: red;
@scrub: #e0e8cd;
@wood: #d4e2c6;
@snow: #f4f8ff;
@rock: #ddd;
@sand: mix(#ffd,@land,33%);
@cemetery: #edf4ed;
@pitch: fadeout(#fff,50%);
@park: #edf9e4;
@piste: mix(blue,@land,5);
@school: #fbf6ff;
@hospital: #fff0f0;
@builtup: #f6faff;

#landuse {
  // The ::cover attachments fade in and become solid, overriding
  // any underlying shaped in the #landcover layer.
  ::cover33 { opacity: 0.33; }
  ::cover66 { opacity: 0.66; }
  ::cover33[zoom=13],
  ::cover66[zoom=14],
  ::cover[zoom>=15] {
    // Bring in OSM landcover only at higher zoom levels where
    // the higher level of detail makes sense.
    [class='wood'] { polygon-fill: @wood; }
    [class='scrub'] { polygon-fill: @scrub; }
    [class='grass'] { polygon-fill: @grass; }
    [class='crop'] { polygon-fill: @crop; }
    [class='sand'] { polygon-fill: @sand; }
    [type='golf_course'],[type='rough'] { polygon-fill: darken(@park,10); }
  }
  ::cover33[zoom=10],
  ::cover66[zoom=11],
  ::cover[zoom>=12] {
    [class='rock'] { polygon-fill: @rock; }
  }
}

#landuse::use {
  // The ::use attachement is multuplied over #landcover and
  // #landuse::cover*, letting trees, grass, etc show through
  // where they occur in parks, schools, etc.
  comp-op: multiply;
  [class='cemetery'] {
    polygon-fill: @cemetery;
    line-color: @cemetery*0.95;
    line-offset: -0.5;
  }
  [class='hospital'] {
    polygon-fill: @hospital;
    line-color: @hospital*0.95;
    line-offset: -0.5;
  }
  [class='industrial'] {
    polygon-fill: @builtup;
    line-color: @builtup*0.95;
    line-offset: -0.5;
  }
  [class='park'] {
    polygon-fill: @park;
    line-color: @park*0.95;
    line-offset: -0.5;
  }
  [class='pitch'][zoom>=15] {
    polygon-fill: @pitch;
    line-color: #fff;
    line-width: 0.5;
    [zoom>=16] { line-width: 1; }
    [zoom>=17] { line-width: 1.5; }
    [type='green'] {
      polygon-fill: darken(@pitch,20);
      line-color: darken(@pitch,5);
      line-width: 1;
      [zoom>=17] { line-width: 1.5; }
      [zoom>=18] { line-width: 2; }
    }
    [type='fairway'],
    [type='tee']{
      polygon-fill: darken(@pitch,5);
      line-color: darken(@pitch,20);
    }
  }
  [class='sand'] {
    polygon-fill: @sand;
    [type='bunker'] {
      polygon-fill: darken(@sand,5);
      line-color: darken(@sand,14);
    }
  }
  [class='school'] {
    polygon-fill: @school;
    line-color: @school*0.95;
    line-offset: -0.5;
  }
}

#landuse_overlay {
  // Landuse/landcover areas that need to be drawn above the water layer.
  polygon-fill: rgba(0,0,0,0);
  polygon-clip: false;
  [class='wetland'] {
    polygon-fill: fadeout(@water,80);
    [zoom>=12] {
//      polygon-pattern-file: url(img/pattern/wetland_16.png);
//      polygon-pattern-opacity: 0.5;
//      polygon-pattern-alignment: global;
    }
//    [zoom>=13] { polygon-pattern-file: url(img/pattern/wetland_32.png); }
//    [zoom>=14] { polygon-pattern-file: url(img/pattern/wetland_64.png); }
  }
  [class='wetland_noveg'] {
    polygon-fill: fadeout(@water,80);
    [zoom>=12] {
//      polygon-pattern-file: url(img/pattern/wetland_noveg_16.png);
//      polygon-pattern-opacity: 0.5;
//      polygon-pattern-alignment: global;
    }
//    [zoom>=13] { polygon-pattern-file: url(img/pattern/wetland_noveg_32.png); }
//    [zoom>=14] { polygon-pattern-file: url(img/pattern/wetland_noveg_64.png); }
  }
  [class='breakwater'],
  [class='pier'] {
    polygon-fill: @land;
  }
}


#building {
  ::shadow[zoom>=16] {
    line-clip: false;
    line-join: round;
    line-cap: round;
    line-color: fadeout(#000, 85%);
    [zoom>=17] { line-width: 2; }
  }
  polygon-clip: false;
  polygon-fill: @buildings;
  polygon-opacity: 0.25;
  [zoom>=16] {
    polygon-geometry-transform: translate(-0.5,-1.2);
  }
}

#CSCNC {
  line-color: black;
  line-dasharray: 4,4;
}

#BRA {
  line-color: @red;
  line-dasharray: 1,5;
  line-cap: round;
  line-width: 2;
}

// Color palette //
@fill1: #fff;
@fill2: #bbb;
@fill3: #777;
@fill4: #000;


//@water: #ecf9ff;
@water: white;
//@water_dark: #dcf8ff;
@water_dark: white;


@land: @fill1;
@road: @fill2;

@text: #777;

// Primary
@black: #3a3e41;
@red: #ea212d;
@blue: #59889d;
@steel: #8e9da6;
@green: #9dba73;
@gold: #faba54;
@orange: #f49457;

// Secondary
@brick:	#bf6151;
@periwinkle: #90b1c0;
@celery: #c2cca1;
@goldenrod: #fdcd80;
@peach: #faba7d;
@lilac: #ccb4c8;
@putty: #b5997d;

Map { background-color: @fill1; }

#_clusters {
  marker-fill: @orange;
  marker-line-color: mix(black, @orange, 50);
  marker-width: [n];

  marker-fill-opacity: 0.5;
  marker-allow-overlap: true;
}

// Water Features //
#america_water {
  polygon-fill: @water_dark;
  ::shadow {
    polygon-fill: @water_dark;
  }
  ::fill {
    // a fill and overlay comp-op lighten the polygon-
    // fill from ::shadow.
    polygon-fill: @fill1;
//    polygon-fill: black;
    comp-op: soft-light;
    // blurring reveals the polygon fill from ::shadow around
    // the edges of the water
    image-filters: agg-stack-blur(10,10);
  }
}

#america_water {
  line-color: mix(black,@water,12.5);
  line-width: 1;
}

#OGRGeoJSON {
  line-color: @fill4;
  line-width: 0.15;
  polygon-fill: @fill2;
  polygon-opacity: 0.1;
}

#_TOWNS {
  [TOWN != 'BOSTON'] {
  line-color: @fill3;
  line-width: 0.125;
  }
}

// Land Features //
#_landuse[class='cemetery'],
#_landuse[class='park'],
#_landuse[class='wood'],
#_landuse_overlay {
  polygon-fill: darken(@land,3);
  [zoom>=15] { polygon-fill:mix(@land,@fill4,95); }
}

#_landuse[class='pitch'],
#_landuse[class='sand'] { 
  polygon-fill: mix(@land,@fill4,90);
}

#_landuse[class='hospital'],
#_landuse[class='industrial'],
#_landuse[class='school'] { 
//  polygon-fill: red;
  polygon-fill: mix(@land,@fill1,95);
}