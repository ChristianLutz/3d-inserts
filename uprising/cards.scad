// The first storage is only for cards, 

// Input parameter
width = 70;
outerThickness = 2;
groundThickness = -1; // -1 no ground or 2,3,4 
pocketSeparatorThickness = 1;
pockets = [60,100,30,30,60];

// 
function sumv(v, i, s = 0) = (i == s ? v[i]  : v[i] + sumv(v, i-1, s));
function pocketStart(v, i, s = 0) = (i == s ? outerThickness  : v[i-1] + pocketSeparatorThickness + pocketStart(v, i-1, s));

hIndex = len(pockets)-1;
length = sumv(pockets, hIndex) + (2 * outerThickness) + (hIndex * pocketSeparatorThickness);

difference() {
    cube([width, length, 60]);
    // spare easier to take the cards
    rotate([-90, 0, 0])
        translate([width/2, -70, -1])
            cylinder(length + 2, 30, 30, $fn=6);
    // pockets for cards
    for (i=[0:hIndex]) {
        translate([outerThickness, pocketStart(pockets,i), -1])
            cube([(width - 2 * outerThickness), pockets[i], 62]);
    }
}
