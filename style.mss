/*Map {
  background-color: #b8dee6;
}

#10mlakes {
  line-color:#b8dee6;
  line-width:0.25;
  polygon-opacity:1;
  polygon-fill:#b8dee6;
}

#countries {
  polygon-fill: #ffffff;
  ::outline {
    line-color: #85c5d3;
    line-width: .5;
    line-join: round;
  }
}

#10madmin1statesprovi {
  line-width:0;
  [COUNTRYNAM = "United States of America"] { 
    line-width: .25;
    line-color: #85c5d3;
  }
} */

#block2xnces {
  marker-fill:#e0dfdf;
  marker-line-width:0;
  marker-allow-overlap:true;

  [zoom <= 4] { marker-width:2; }
  [zoom = 4] {
    [min_sites_schools <= 80]  { marker-width:2; }
  	[min_sites_schools > 80]  { marker-width: [min_sites_schools]/40; }
  }
  [zoom = 5] {
    [min_sites_schools <= 90]  { marker-width:3; }
  	[min_sites_schools > 90]  { marker-width: [min_sites_schools]/30; }
  }
  [zoom = 6] {
    [min_sites_schools <= 60]  { marker-width:3; }
  	[min_sites_schools > 60]  { marker-width: [min_sites_schools]/20; }
  }
  [zoom > 6] {
    [min_sites_schools <= 40]  { marker-width:4; }
  	[min_sites_schools > 40]  { marker-width: [min_sites_schools]/10; }
  }
  [zoom > 7] {
    [min_sites_schools <= 25]  { marker-width:5; }
  	[min_sites_schools > 25]  { marker-width: [min_sites_schools]/5; }
  }
  
  //adjust threshold for different layers
  [data_quality_score <= 3] { 
    [pct_bldgs_gt50_alt >= 0] { marker-fill:rgb(215, 25, 28); }
    [pct_bldgs_gt50_alt >.25] { marker-fill:#df8a35; }
    [pct_bldgs_gt50_alt >.5] { marker-fill:rgb(44, 123, 182); }
    [pct_bldgs_gt50_alt >.75] { marker-fill:#020b55; }
  }  	
}



