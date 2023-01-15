// The first storage is only for cards, and currently just some ideas
pockets = [[2,80],[84,80],[166,80]];
difference() {
    cube([70,248,60]);
    // easier to take the cards
    rotate([-90,0,0])
        translate([35,-70,-1])
            cylinder(250,30,30,$fn=6);
    // pockets for cars here are only three
    for(i=pockets) {
        translate([2,i[0],-1])
            cube([66,i[1],62]);
    }
}
