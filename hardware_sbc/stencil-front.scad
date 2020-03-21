$fs=0.1; 
$fa=4;

difference() {
    cube([150, 90, 5.6 + 1.2]);
    translate([150/2 - 66/2, 90/2 - 33/2, 0]) {
        difference() {
            translate([-0.5, -0.5, -0.1])
                cube([66, 33, 5.6 + 1.2 + 0.2]);

            translate([11.45, 3.9, 0]) {
                cylinder(h=5.6+1.0, r=0.75);
                cylinder(h=5.6-3, r=2.5);
                translate([-2.5, -5, 0])
                    cube([5, 5, 5.6-3]);
            }
            
            translate([11.45, 28.10, 0]) {
                cylinder(h=5.6+1.0, r=0.75);
                cylinder(h=5.6-3, r=2.5);
                translate([-2.5, 0, 0])
                    cube([5, 5, 5.6-3]);
            }
            
            translate([35.6, 3.9, 0]) {
                cylinder(h=5.6+1.0, r=0.75);
                cylinder(h=5.6-3, r=2.5);
                translate([-2.5, -5, 0])
                    cube([5, 5, 5.6-3]);
            }
            
            translate([35.6, 28.10, 0]) {
                cylinder(h=5.6+1.0, r=0.75);
                cylinder(h=5.6-3, r=2.5);
                translate([-2.5, 0, 0])
                    cube([5, 5, 5.6-3]);
            }
        }
    }
};