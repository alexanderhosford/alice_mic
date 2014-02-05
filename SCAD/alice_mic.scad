use <tube.scad>
use <capsule_cover.scad>
use <tsb160a/tsb160aElement.scad>
use <end_cap.scad>

$fa=0.01;
$fs=0.4;

module capsuleCover() {
	color("silver")
	import("STL/capsuleCover.stl");
}

module capsuleCoverLargeGrille() {
	color("silver")
	import("STL/capsuleCoverLargeGrille.stl");
}

module 1g() {
	color("DodgerBlue")
	import("STL/1g.stl");
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

module fet() {
	import("STL/to72_no_legs.stl");
}

module rubber_mount_thin() {
	color("black")
	import("STL/rubber_mount_thin.stl");
}

module rubber_mount_thick() {
	color("black")
	import("STL/rubber_mount_thick.stl");
}

//////////////////////////////////////////

//translate([0,0,0])
//color("silver")
//tube();

translate([0,0,43.51])
rotate([])
neutrik_connector();

translate([0,0,35.2])
rotate([0,180,0])
element();

translate([0,0,25])
rubber_mount_thick();

//translate([0,0,25])
//rubber_mount_thin();

rotate([90,0,90])
translate([0,1,0])
color("darkblue",0.8)
pcb_housing();

translate([0,3.5,27])
rotate([0,0,90])
1g();

translate([0,-2,22])
rotate([20,0,0])
fet();

translate([0,0,40.1])
end_cap();


