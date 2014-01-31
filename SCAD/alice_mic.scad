use <tube.scad>
use <mesh.scad>
use <capsule_cover.scad>
use <rubber_mount.scad>
use <tsb160aElement.scad>
use <end_cap.scad>

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
	color("darkgray")
	import("STL/neutrik_connector_trimmed.stl");
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
tube();

translate([0,0,34.01])
rotate([0,180,0])
element();

//translate([0,-20,0])
//scale(10)
//fet();

translate([0,0,-43.51])
rotate([0,0,-90])
neutrikConnector();

//translate([0,0,28])
//rubber_mount();

translate([0,0,25])
rubber_mount_2();

//translate([0,0,62])
//capsuleCoverLargeGrille();

rotate([90,0,90])
translate([0,1,0])
color("darkblue",0.8)
pcb_housing();

translate([0,0,40.5])
end_cap();

//mesh();