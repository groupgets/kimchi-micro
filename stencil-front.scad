$fs=0.1; 
$fa=4;

difference() {
    cube([150, 90, 5.6 + 1.2 + 1.2]);
    translate([150/2 - 65/2, 90/2 - 32/2, 1.2]) {
        difference() {
            translate([-0.2, -0.2, -0.1])
                cube([65.4, 32.4, 5.6 + 1.2 + 0.2]);

            translate([11.45, 3.9, 0]) {
                cylinder(h=4.4, r=0.5);
                cylinder(h=2.4, r=2.5);
                translate([-2.5, -5, 0])
                    cube([5, 5, 2.4]);
            }
            
            translate([11.45, 28.10, 0]) {
                cylinder(h=4.4, r=0.5);
                cylinder(h=2.4, r=2.5);
                translate([-2.5, 0, 0])
                    cube([5, 5, 2.4]);
            }
            
            translate([35.6, 3.9, 0]) {
                cylinder(h=4.4, r=0.5);
                cylinder(h=2.4, r=2.5);
                translate([-2.5, -5, 0])
                    cube([5, 5, 2.4]);
            }
            
            translate([35.6, 28.10, 0]) {
                cylinder(h=4.4, r=0.5);
                cylinder(h=2.4, r=2.5);
                translate([-2.5, 0, 0])
                    cube([5, 5, 2.4]);
            }
        }
    }
    
    translate([150/2 - 35/2, 90/2 - 15/2, -1]) {
        cube([35, 15, 5.6 + 1.2 + 0.2]);
    }
};