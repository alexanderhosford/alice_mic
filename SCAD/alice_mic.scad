use <tube.scad>
use <mesh.scad>
use <capsule_cover.scad>
use <rubber_mount.scad>
use <tsb160aElement.scad>

$fa=0.01;
$fs=0.05;

module capsuleCover() {
	color("silver")
	import("STL/capsuleCover.stl");
}

module capsuleCoverLargeGrille() {
	color("silver")
	import("STL/capsuleCoverLargeGrille.stl");
}

module fet() {
	import("STL/TO72.stl");
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
	import("STL/xlrConnector.stl");
}

module capsuleClasp() {
	color("white")
	import("STL/capsuleBoardClasp.stl");
}

module connectorClasp() {
	color("white")
	import("STL/xlrBoardClasp.stl");
}

module pcb_housing() {
	import("STL/pcb_housing_3.stl");
}

//////////////////////////////////////////


//translate([0,0,-13.1])
%tube();

translate([0,0,32.5])
rotate([0,180,0])
capsule();

//translate([0,-20,0])
//scale(10)
//fet();

//translate([0,0,-16])
//rotate([0,90,0])
//board3();

//translate([0,0,-43.5])
//rotate([0,0,-90])
//neutrikConnector();

//translate([0,0,31.5])
//rotate([0,180,0])
//capsuleClasp();

//translate([0,0,-48.5])
//rotate([0,0,0])
//connectorClasp();

//scale(0.01)
//meshgrid();

//translate([0,0,28])
////rubberRing();
//rubber_mount();

translate([0,0,26])
//rubberRing();
rubber_mount_2();

//translate([0,0,52])
//translate([0,0,83])
//%capsuleCover();

//translate([0,0,62])
////translate([0,0,83])
//capsuleCoverLargeGrille();

rotate([90,0,90])
translate([0,1,0])
color("dark blue")
pcb_housing();