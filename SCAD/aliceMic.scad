use <boardWithCaps.scad>
use <mesh.scad>
use <capsuleCover.scad>
use <rubberMount.scad>
use <ruler.scad>

$fa=0.01;
$fs=0.05;

module tube() {
	color("silver")
	difference() {
		cylinder(r=22.25/2,h=80,center=true);
		cylinder(r=18.63/2,h=170,center=true);
		
//		translate([0,0,-78.6])
//		neutrikConnector();
	}
}

//module headbasket() {
//}

module capsule() {
	color("gold")
	import("STL/tsb160aElement.stl");
}

module capsuleCover() {
	color("silver")
	import("STL/capsuleCover.stl");
}

module capsuleCoverLargeGrille() {
	color("silver")
	import("STL/capsuleCoverLargeGrille.stl");
}

module fet() {
	import("STL/TO72fromDAE.stl");
}

module 1g() {
	import("STL/0207resistor.stl");
}

module xlrPins() {
	import("STL/xlrPins.stl");
}

module neutrikConnector() {
	rotate([90,0,0])
	color("dark gray")
	difference() {
		import("STL/xlrConnector.stl");
//		translate([0,0,-70])
//		difference() {
//			cylinder(r=25/2,h=10,center=true);
//			cylinder(r=18.63/2,h=15,center=true);
//		}
	}
}



module capsuleClasp() {
	color("white")
	import("STL/capsuleBoardClasp.stl");
}

module connectorClasp() {
	color("white")
	import("STL/xlrBoardClasp.stl");
}

//module rubberRing() {
//	color("black")
//	difference() {
//		cylinder(r=16/2,h=7,center=true);
//		cylinder(r=13/2,h=8,center=true);
//	}
//}

module pcb_housing() {
	import("STL/pcb_housing.stl");
}

//////////////////////////////////////////


//translate([0,0,-13.1])
%tube();

translate([0,0,32.5])
rotate([0,180,0])
capsule();

translate([0,-20,0])
scale(10)
fet();

//translate([0,0,-16])
//rotate([0,90,0])
//board3();

translate([0,0,-43.5])
rotate([0,0,-90])
neutrikConnector();

//translate([0,0,31.5])
//rotate([0,180,0])
//capsuleClasp();

//translate([0,0,-48.5])
//rotate([0,0,0])
//connectorClasp();

//scale(0.01)
//meshgrid();

translate([0,0,28])
//rubberRing();
rubberMount();

//translate([0,0,52])
//translate([0,0,83])
//%capsuleCover();

translate([0,0,62])
//translate([0,0,83])
capsuleCoverLargeGrille();

rotate([90,0,90])
translate([0,1,0])
color("light blue")
pcb_housing();