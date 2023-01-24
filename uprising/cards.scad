// The first storage is only for cards, 

// Input parameter
width = 70;
height = 60;
outerThickness = 2;
groundThickness = -1; // -1 no ground or 2,3,4 .. don't use 0
pocketSeparatorThickness = 1;
pockets = [60, 60, 30];

// main
function sumv(v, i, s = 0) = (i == s ? v[i]  : v[i] + sumv(v, i-1, s));
function pocketStart(v, i) = (i == 0 ? outerThickness  : v[i-1] + pocketSeparatorThickness + pocketStart(v, i-1));
function spareSpaceW(w) = w - 20 > 0 ? (w - 10) / 2 : 0;
function spareSpaceH(w, h) = spareSpaceW(w) > 0 ? (-h - spareSpaceW(w) / 3) : 0;

hIndex = len(pockets) - 1;
length = sumv(pockets, hIndex) + (2 * outerThickness) + (hIndex * pocketSeparatorThickness);

difference() {
    cube([width, length, height]);
    // spare space to easier to take the cards out
    rotate([-90, 0, 0])
        translate([width / 2, spareSpaceH(width, height), -1])
            #cylinder(length + 2, spareSpaceW(width), spareSpaceW(width), $fn=6);
    // pockets for cards
    for (i=[0:hIndex]) {
        translate([outerThickness, pocketStart(pockets,i), groundThickness])
            cube([(width - 2 * outerThickness), pockets[i], height + 2]);
    }
}
