
difference() {
    union() {
        cube([122,83,2]);
        translate([1,0,1])
            cube([120,82,3]);
    }
    translate([61,41,-1])
        cylinder(6, 20, 20, $fn=6);
    translate([61,41,1])
        cylinder(6, 40, 40, $fn=6);
    
    translate([4,3,2])
        cube([114,82,3]);
    translate([3,2,2])
        cube([116,83,1]);
}