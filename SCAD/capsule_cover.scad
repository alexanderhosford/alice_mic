use <mesh.scad>
use <MCAD/triangles.scad>

$fa=0.01;
$fs=0.05;

grilleW = 20;
grilleAng = 50;
grilleH = 20;

module grilleTri() {
	translate([20,0,1])
	rotate([0,180,0]) {
		a_triangle(grilleAng,20,grilleW );
		translate([0,0,grilleW ])
		rotate([180,0,0])
		a_triangle(grilleAng,20,grilleW );
	}
	
//3 0.5 1.5
//4 1 2
//5 1.5
//6 2
	translate([10,0,-((grilleW*0.5)-1)])
	cube([20,1,grilleW],center=true);
}

module grilleTris() {
	for (i=[1:3]) {
		rotate([0,0,i*120]) {
			translate([0,0,0])
			grilleTri();
		}
	}
}

module grilleRing() {
	intersection() {
		difference() {
			cylinder(r=12,h=grilleW ,center=true);
			cylinder(r=8,h=3,center=true);
		}
	
		grilleTris();
	}
}

module capsuleCover() {
	color("silver")
	difference() {
		cylinder(r=22.25/2,h=18,center=true);
		translate([0,0,-2])
		cylinder(r=18.63/2,h=18,center=true);
		cylinder(r=16/2,h=20,center=true);

		grilles();	
	}
}

capsuleCover();

module grilles() {
//	translate([0,0,4])
//	rotate([0,0,0])
//	grilleRing();
//		
//	translate([0,0,-4])
//	rotate([0,0,-0])
//	grilleRing();

	translate([0,0,4])
	rotate([0,0,0])
	grilleRing();
}