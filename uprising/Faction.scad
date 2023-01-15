difference() {
    cube([124,82,50]);
    translate([2,2,24])
        cube([120,78,60]);
    // vp token
    translate([29,25,8])
        cylinder(24,15,15);
    translate([29,25,-1])
        cylinder(24,10,10);
    // heaven 1
    translate([29,57,9])
        cylinder(24,15,15);
    translate([29,57,-1])
        cylinder(24,10,10);
    
    // heaven 2-4
    translate([62,25,2])
        cylinder(24,15,15);
    translate([62,25,-1])
        cylinder(24,10,10);
    translate([62,57,2])
        cylinder(24,15,15);
    translate([62,57,-1])
        cylinder(24,10,10);
    translate([95,25,2])
        cylinder(24,15,15);
    translate([95,25,-1])
        cylinder(24,10,10);
    translate([95,57,2])
        cylinder(24,15,15);
    translate([95,57,-1])
        cylinder(24,10,10);
    
    // feat cards
    translate([57,7,13])
        cube([45,68,15]);
   
    // figure place holder 
    translate([2,2,14])
        #cube([4,78,15]);
    translate([2,2,14])
        #cube([120,4,15]);
    translate([118,2,14])
        #cube([4,78,15]);
    translate([2,76,14])
        #cube([120,4,15]);
        
    // lid space
    translate([1,1,46])
        cube([122,83,2]);
    translate([2,2,46])
        cube([120,84,6]);
    
}
    


//difference() {
//    cube([70,300,60]);
//    translate([15,-1,50])
//        cube([40,302,20]);
//    for(i=[[2,80],[84,80],[166,80],[248,50]]) {
//        translate([2,i[0],4])
//            cube([66,i[1],60]);
//    }
//}
