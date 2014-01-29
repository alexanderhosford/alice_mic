use <mesh.scad>
use <MCAD/triangles.scad>

$fa=0.01;
$fs=0.05;

module capsuleCover() {
	color("silver")
	difference() {
		cylinder(r=22.25/2,h=18,center=true);
		translate([0,0,-2])
		cylinder(r=18.63/2,h=18,center=true);
		cylinder(r=16/2,h=20,center=true);
	}
}

module grilleRing() {
	difference() {
		cylinder(r=12,h=2,center=true);
		cylinder(r=8,h=3,center=true);
	}
}

grilleRing();

%capsuleCover();

//for (i=[1:3]) {
//	rotate([0,0,120*i]) {
//		translate([10,0,0])
//		rotate([0,180,0])
//		triangle(10,10,2);
//	}
//}

module grilleTri() {
	translate([10,0,1])
	rotate([0,180,0]) {
		a_triangle(30,10,2);
		translate([0,0,2])
		rotate([180,0,0])
		a_triangle(30,10,2);
	}
}

for (i=[1:3]) {
rotate([0,0,i*120]) {
	translate()
	grilleTri();
}
}