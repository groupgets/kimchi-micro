difference() {
    cube([150, 90, 2.4]);
    translate([150/2 - 66/2, 90/2 - 33/2, 1.2]) {
        difference() {
            translate([-0.5, -0.5, 0])
                cube([66, 33, 1.2 + 0.1]);

            translate([11.45, 3.9, 0])
                cylinder(h=1.3, r=1.4);
            
            translate([11.45, 28.10, 0])
                cylinder(h=1.3, r=1.4);
            
            translate([35.6, 3.9, 0])
                cylinder(h=1.3, r=1.4);
            
            translate([35.6, 28.10, 0])
                cylinder(h=1.3, r=1.4);
        }
    }
};