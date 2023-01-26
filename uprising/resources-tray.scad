// This is a first attempt for a storage solution for resource tokens. 

// Input parameter
width = 60;
height = 30;
outerThickness = 2;
pocketSeparatorThickness = 1;
pockets = [60, 40, 30];

// main
function sumv(v, i, s = 0) = (i == s ? v[i]  : v[i] + sumv(v, i-1, s));
function pocketStart(v, i) = (i == 0 ? outerThickness  : v[i-1] + pocketSeparatorThickness + pocketStart(v, i-1));

hIndex = len(pockets) - 1;
length = sumv(pockets, hIndex) + (2 * outerThickness) + (hIndex * pocketSeparatorThickness);

difference() {
    cube([width, length, height]);
    // pockets for resources
    for (i=[0:hIndex]) {
        translate([outerThickness, pocketStart(pockets, i), 2])
            intersection() {
                cube([(width - 2 * outerThickness), pockets[i], height + 2]);
                translate([(width - 2) / 2, pockets[i] / 2, max(width, pockets[i])])
                    sphere(r = max(width, pockets[i]));
            }
    }
}
