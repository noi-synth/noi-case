$fn=20;

module roundedrect(w=10, h=10, z=1, r=2) {
    linear_extrude(z) translate([-w/2, -h/2, 0]) hull() {
        translate([0, 0, 0]) circle(r);
        translate([w, 0, 0]) circle(r);
        translate([0, h, 0]) circle(r);
        translate([w, h, 0]) circle(r);
    }
}

// T0, surw=5mm, surh=0.5mm

translate([0*25,0,0]) {
    difference() {
        roundedrect(w=20, h=20, z=1.5, r=2);
        translate([0, 0, 0.5]) roundedrect(w=18, h=18, z=2, r=2);
    }

    roundedrect(w=10, h=10, z=3, r=2);
}

// T1, surw=5mm, surh=1mm

translate([1*27,0,0]) {
    difference() {
        roundedrect(w=20, h=20, z=1.5, r=2);
        translate([0, 0, 1]) roundedrect(w=18, h=18, z=2, r=2);
    }

    roundedrect(w=10, h=10, z=3, r=2);
}

// T2, surw=7.5mm, surh=0.25mm

translate([0*27,27,0]) {
    difference() {
        roundedrect(w=20, h=20, z=1.5, r=2);
        translate([0, 0, 0.25]) roundedrect(w=18, h=18, z=2, r=2);
    }

    roundedrect(w=15, h=15, z=3, r=2);
}

// T3, air, surw=6mm, surh=1mm

translate([1*27,27,0]) {
    difference() {
        roundedrect(w=20, h=20, z=3, r=2);
        translate([0, 0, 2]) roundedrect(w=18, h=18, z=1.5, r=2);
        translate([0, 0, -0.5]) roundedrect(w=18, h=18, z=1.5, r=2);
    }

    roundedrect(w=12, h=12, z=3, r=2);
}

// T3, air, surw=6mm, surh=0.5mm

translate([2*27,27,0]) {
    difference() {
        roundedrect(w=20, h=20, z=3, r=2);
        translate([0, 0, 1.5]) roundedrect(w=18, h=18, z=2, r=2);
        translate([0, 0, -0.5]) roundedrect(w=18, h=18, z=1.5, r=2);
    }

    roundedrect(w=12, h=12, z=3, r=2);
}