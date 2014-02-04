use <tube.scad>
use <mesh.scad>

$fa=0.01;
$fs=0.05;

module end_mesh() {
	intersection() {
		translate([-18,-19,0])
		scale(0.5)
		mesh();
		cylinder(r=19.5/2,h=3,center=true);
	}
}

module cap() {
	color("silver")
	difference() {
		cylinder(r=22.25/2,h=2,center=true);
		cylinder(r=18/2,h=3,center=true);
	
		translate([0,0,-1.5])
		cylinder(r=19.5/2,h=3,center=true);
	
		translate([0,0,-1])
		difference() {
			cylinder(r=25/2,h=2,center=true);
			cylinder(r=20.75/2,h=3,center=true);
		}
	}
}

module cap_diff() {
	difference() {
		cylinder(r=22.25/2,h=2,center=true);
		cylinder(r=18/2,h=3,center=true);
	
//		translate([0,0,-1.5])
//		cylinder(r=19.5/2,h=3,center=true);
	
		translate([0,0,-1])
		difference() {
			cylinder(r=25/2,h=2,center=true);
			cylinder(r=20.75/2,h=3,center=true);
		}
	}
}

module end_cap() {
	cap();
	end_mesh();
}

//end_cap();

cap();

//cylinder(r=2,h=2,center=true);
