
difference() {
    union() {
        // the intersection is used to reduce the friction 
        // so it should be more easy to move this into 
        // faction try
        intersection() {
            cube([122,83,1.8]);
            rotate([-90,0,0]) {
                translate([61,0,0]) {
                    cylinder(85,60.9,60.9);
                }
            }
        }
        translate([1,0,1])
            cube([120,82,3]);
    }
    // home heaven hex
    translate([61,41,-1])
        cylinder(6, 20, 20, $fn=6);
    translate([61,41,0.5])
        cylinder(6, 40, 40, $fn=6);
    
    // space to move faction character card
    translate([4,3,1.8])
        cube([114,82,3]);
    translate([3,2,1.8])
        cube([116,83,1]);
}