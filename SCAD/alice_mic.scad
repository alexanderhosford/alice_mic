use <tube.scad>
use <mesh.scad>
use <capsule_cover.scad>
use <rubber_mount.scad>
use <tsb160aElement.scad>
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

//////////////////////////////////////////

translate([0,0,0])
color("silver")
tube();

translate([0,0,34.01])
rotate([0,180,0])
element();



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

translate([3,0,24])
rotate([0,90,0])
1g();

translate([-2,0,25])
rotate([0,180,0])
fet();

translate([0,0,40.1])
end_cap();

//mesh();

